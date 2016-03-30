require "defines"
require "util"

function builtEntity(event)

  if event.created_entity.name == "nuclear-reactor" then
    if global.reactors == nil then global.reactors = {} end
    local reactor = event.created_entity
    local entry = {reactor=reactor}

    placeInput(entry)
    placeOutput(entry)

    reactor.rotatable = false
    entry.steam = 0
    table.insert(global.reactors, entry)

  end

end

function minedEntity(event)

end

function placeInput(entry)
  local reactor = entry.reactor
  local pos =rotate( {x=-2,y=-1},reactor.direction)
  pos = {x = reactor.position.x +pos.x,y = reactor.position.y+pos.y}
  if not reactor.surface.can_place_entity{
    name="nuclear-reactor-input",
    position = pos,
    direction = reactor.direction,
    force = game.forces.player} then
    return
  end

  local input = reactor.surface.create_entity{
    name = "nuclear-reactor-input",
    direction = reactor.direction,
    position = pos,
    force = game.forces.player,
    recipe = "nuclear-item-to-fluid"
  }
  input.rotatable = false
  entry.input = input
end

function placeOutput(entry,reactor)
  local reactor = entry.reactor
  local pos =rotate( {x=2,y=-1},reactor.direction)
  pos = {x = reactor.position.x +pos.x,y = reactor.position.y+pos.y}
  if not reactor.surface.can_place_entity{
    name="nuclear-reactor-output",
    position = pos,
    direction = reactor.direction,
    force = game.forces.player} then
    return
  end

  local output = reactor.surface.create_entity{
    name = "nuclear-reactor-output",
    direction = reactor.direction,
    position = pos,
    force = game.forces.player,
    recipe = "nuclear-fluid-to-item"
  }
  output.rotatable = false
  entry.output = output
end

function rotate(position, rotation)
  rotation = rotation/2 + 1
  local sinv = {0,1,0,-1}
  local cosv = {1,0,-1,0}
  return {x = position.x*cosv[rotation]-position.y*sinv[rotation], y = position.x*sinv[rotation]+position.y*cosv[rotation]}
end


script.on_event(defines.events.on_tick, function(event)
    if global.reactors ~= nil then
      for k,entry in pairs(global.reactors) do
        local reactor = entry.reactor
        if k % 60 == game.tick % 60 then
          if entry.input == nil then
            placeInput(entry)
          end
          if entry.output == nil then
            placeOutput(entry)
          end
        end
        if reactor.valid then
          if reactor.recipe ~= nil and reactor.recipe.name == "nuclear-fission" then
            local steambox
            if reactor.fluidbox[3] ~= nil then
              steambox = reactor.fluidbox[3]
            else
              steambox = {
                type="hot-steam",
                amount=0,
                temperature=1000
              }
            end

            if entry.steam + steambox.amount > 10 then
              steambox.amount = steambox.amount + entry.steam - 10
              entry.steam = 10
            else
              entry.steam = entry.steam + steambox.amount
              if entry.steam > (10/60) then
                steambox.amount = (10/60)
                entry.steam = entry.steam - (10/60)
              else
                steambox.amount = entry.steam
                entry.steam = 0
              end
            end
            steambox.temperature = 1000
            reactor.fluidbox[3] = steambox
          end
        else
          table.remove(global.reactors, k)
          if entry.input ~= nil and entry.input.valid then
            entry.input.destroy()
          end
          if entry.output ~= nil and entry.output.valid then
            entry.output.destroy()
          end
        end --end
      end
    end

end)


script.on_configuration_changed(function(event)
  if(event.mod_changes["Nucular"] == nil or event.mod_changes["Nucular"].new_version ~= "0.2.0") then
    return
  end
  if global.reactors == nil then global.reactors = {} end
  for k,entry in pairs(global.reactors) do
    if entry.reactor.valid then
      if entry.input ~= nil and entry.input.fluidbox[1] ~= nil then
        entry.input.fluidbox[1] = nil
      end
      if entry.output ~= nil and entry.output.fluidbox[1] ~= nil then
        entry.output.fluidbox[1] = nil
      end
      entry.reactor.fluidbox[1] = nil
      entry.reactor.fluidbox[2] = nil
      entry.reactor.fluidbox[3] = nil
      entry.reactor.fluidbox[4] = nil
      if entry.steam == nil then
        entry.steam = 0
      end
    else
      table.remove(global.reactors, k)
      if entry.input ~= nil and entry.input.valid then
        entry.input.destroy()
      end
      if entry.output ~= nil and entry.output.valid then
        entry.output.destroy()
      end
    end --end
  end
end)

script.on_event(defines.events.on_trigger_created_entity, function(event)
  if event.entity.name == "radiation-cloud" then
    game.evolution_factor = game.evolution_factor + 0.002 * (1-game.evolution_factor)
  end
end)

script.on_event(defines.events.on_built_entity, builtEntity)
script.on_event(defines.events.on_robot_built_entity, builtEntity)
script.on_event(defines.events.on_preplayer_mined_item , minedEntity)
script.on_event(defines.events.on_entity_died , minedEntity)
script.on_event(defines.events.on_robot_pre_mined  , minedEntity)
