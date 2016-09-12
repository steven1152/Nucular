function padBuilt(event)
  global.pads =global.pads or {}
  local pad = event.created_entity
  if global.missing then
    pad.insert{name="titanium-ore", count=global.missing}
    global.missing = nil
  end
  table.insert(global.pads, pad)
end



function rocketLaunched(event)
  local rocket_inventory = event.rocket.get_inventory(1)
  if rocket_inventory.get_item_count("asteroid-mining-drill") == 0 then
    return
  end
  local nearest = nil
  local nearest_distance = 100000
  if global.pads ~= nil then
    for k,pad in pairs(global.pads) do
      if pad.valid then
        game.players[1].print("launched")
        local distance = squared_distance(event.rocket.position, pad.position)
        if distance < nearest_distance then
          nearest = pad
          nearest_distance = distance
        end
      else
        table.remove(global.pads, k)
      end
    end
  end
  if nearest then
    nearest.insert{name="titanium-ore", count=400}
  else
    global.missing = global.missing or 0
    global.missing = global.missing + 400
    game.players[1].print("Build a rocket landing pad to receive titanium ore.")
  end
end

function squared_distance(p1,p2)
  return (p1.x -p2.x) * (p1.x -p2.x) + (p1.y -p2.y) * (p1.y -p2.y)
end
