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
    recipe = "nuclear-item-to-fluid"
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
          if #reactor.fluidbox > 2 and reactor.fluidbox[3] ~= nil then
            local steambox = reactor.fluidbox[3]
            steamtemp = 100
            steambox["temperature"] = 100
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


script.on_event(defines.events.on_trigger_created_entity, function(event)
  if event.entity.name == "radiation-cloud" then
    if game.evolution_factor +0.002 > 1 then
      game.evolution_factor = 1
    else 
      game.evolution_factor = game.evolution_factor +0.002
    end
  end
end)

script.on_event(defines.events.on_built_entity, builtEntity)
script.on_event(defines.events.on_robot_built_entity, builtEntity)
script.on_event(defines.events.on_preplayer_mined_item , minedEntity)
script.on_event(defines.events.on_entity_died , minedEntity)
script.on_event(defines.events.on_robot_pre_mined  , minedEntity)
