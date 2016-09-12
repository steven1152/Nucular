require "util"
require "scripts.rocket-landing-pad"

function builtEntity(event)
  if event.created_entity.name == "rocket-landing-pad" then
    padBuilt(event)
  end
  
end


script.on_event(defines.events.on_rocket_launched,function(event)
  rocketLaunched(event)
end)

script.on_event(defines.events.on_built_entity, builtEntity)
script.on_event(defines.events.on_robot_built_entity, builtEntity)
