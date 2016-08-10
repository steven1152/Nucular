require "util"
require "scripts.steam"
require "scripts.reactor"

function builtEntity(event)
  if event.created_entity.name == "steam-boiler" then
    steamBoilerBuilt(event)
  elseif event.created_entity.name == "nuclear-reactor" then
    reactorBuilt(event)
  end
end


script.on_event(defines.events.on_tick, function(event)
 -- reactorTick(event)
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
