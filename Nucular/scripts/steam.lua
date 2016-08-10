function steamBoilerBuilt(event)
  if event.created_entity.name == "steam-boiler" then
    event.created_entity.recipe = "water-to-steam"
  end
end


function steamConverterTick(event)
  if global.converters ~= nil then
    for k,converter in pairs(global.converters) do
      if converter.valid then
        if #converter.fluidbox == 2 then
          local water = 0
          local watertemp = 0
          local steam = 0
          if converter.fluidbox[1] ~= nil then
            water = converter.fluidbox[1].amount
            watertemp = (converter.fluidbox[1].temperature-15)
          end
          if converter.fluidbox[2] ~= nil then
            steam =converter.fluidbox[2].amount
          end
          local newsteam = water*watertemp/1000
          local newwater = 0
          if steam + newsteam > 10 then
            newsteam = 10-steam
            newwater = water - newsteam*1000/watertemp
          end

          if newsteam > 0 then
            local steambox = {
              type="hot-steam",
              amount=steam + newsteam,
              temperature=1000
            }
            converter.fluidbox[2] = steambox
          end
          if newwater > 0 then
            converter.fluidbox[1].amount = newwater
          else
            converter.fluidbox[1] = nil
          end
        end
      else
        table.remove(global.converters, k)
      end 
    end
  end
end
