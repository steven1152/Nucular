data.raw["rocket-silo"]["rocket-silo"].rocket_parts_required = 20


table.insert(data.raw["lab"]["lab"].inputs,"science-pack-4")

data.raw.item["rocket-fuel"].fuel_value = nil

data:extend({{
  enabled = false,
  type = "recipe",
  name = "rocket-fuel",
  category = "chemistry",
  energy_required = 30,
  ingredients = {
    {type="fluid", name="nitric-acid", amount=20},
    {type="fluid", name="light-oil", amount=20}
  },
  result="rocket-fuel"
}
})

data.raw.recipe["battery-mk2-equipment"].ingredients = {
  {"steel-plate", 20},
  {"lithium-ion-battery", 50},
  {"processing-unit", 20}
}

data.raw.recipe["fusion-reactor-equipment"].ingredients = {
  {"steel-plate", 100},
  {"superconducting-magnet", 100},
  {"advanced-processing-unit", 50}
}

data.raw.recipe["power-armor-mk2"].ingredients = {
  {"effectivity-module-3", 5}, {"speed-module-3", 5}, {"processing-unit", 40}, {"titanium", 40}, {"alien-artifact", 50}
}


data.raw.recipe["solar-panel"].ingredients =
  {
    {"steel-plate", 5},
    {"electronic-circuit", 10},
    {"glass", 10}
  }
  
  

data.raw.item["explosives"].icon = "__Beyond__/graphics/icons/explosives.png"

data.raw.recipe["solar-panel-equipment"].ingredients =
    {
      {"solar-panel", 5},
      {"advanced-circuit", 2},
      {"steel-plate", 2}
    }

