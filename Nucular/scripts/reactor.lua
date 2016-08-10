function reactorBuilt(event)
  if global.reactors == nil then global.reactors = {} end
  local reactor = event.created_entity
  local entry = {reactor=reactor}
  entry.steam = 0
  table.insert(global.reactors, entry)
end



function reactorTick(event)
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
      end
    end
  end
end
