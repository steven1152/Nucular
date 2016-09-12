data.raw["assembling-machine"]["assembling-machine-2"].energy_source.emissions = 0.02
data.raw["assembling-machine"]["assembling-machine-3"].energy_source.emissions = 0.015
data.raw["assembling-machine"]["oil-refinery"].energy_source.emissions = 0.015
data.raw["assembling-machine"]["chemical-plant"].energy_source.emissions = 0.015
data.raw["assembling-machine"]["chemical-plant"].energy_usage = "300kW"
data.raw["furnace"]["electric-furnace"].energy_source.emissions = 0.010

data.raw["assembling-machine"]["assembling-machine-2"].allowed_effects = {"consumption", "speed", "pollution"}
data.raw["assembling-machine"]["assembling-machine-3"].allowed_effects = {"consumption", "speed", "pollution"}
data.raw["rocket-silo"]["rocket-silo"].allowed_effects = {"consumption", "speed", "pollution"}
data.raw["assembling-machine"]["chemical-plant"].allowed_effects = {"consumption", "speed", "pollution"}

data.raw.module["productivity-module"].effect = { productivity = {bonus = 0.05}, consumption = {bonus = 0.3}, pollution = {bonus = 0.2}}
data.raw.module["productivity-module-2"].effect = { productivity = {bonus = 0.10}, consumption = {bonus = 0.3}, pollution = {bonus = 0.3}}
data.raw.module["productivity-module-3"].effect = { productivity = {bonus = 0.20}, consumption = {bonus = 0.3}, pollution = {bonus = 0.4}}

data.raw.module["effectivity-module"].effect = { pollution = {bonus = -0.3}}
data.raw.module["effectivity-module-2"].effect = { pollution = {bonus = -0.5}}
data.raw.module["effectivity-module-3"].effect = { pollution = {bonus = -0.8}}

data.raw.module["speed-module-2"].effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.6}}
data.raw.module["speed-module-3"].effect = { speed = {bonus = 0.6}, consumption = {bonus = 0.7}}

data.raw.recipe["productivity-module-3"].ingredients =
  {
    {"productivity-module-2", 4},
    {"advanced-processing-unit", 5},
    {"alien-artifact", 1}
  }
data.raw.recipe["speed-module-3"].ingredients =
  {
    {"speed-module-2", 4},
    {"advanced-processing-unit", 5},
    {"alien-artifact", 1}
  }
data.raw.recipe["effectivity-module-3"].ingredients =
  {
    {"effectivity-module-2", 4},
    {"advanced-processing-unit", 5},
    {"alien-artifact", 1}
  }
  
data.raw.technology["productivity-module-2"].prerequisites = {"productivity-module", "advanced-electronics-2"}
data.raw.technology["productivity-module-3"].prerequisites = {"productivity-module-2", "advanced-electronics-3"}
data.raw.technology["productivity-module-3"].unit =
    {
      count = 200,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    }

data.raw.technology["speed-module-2"].prerequisites = {"speed-module", "advanced-electronics-2"}
data.raw.technology["speed-module-3"].prerequisites = {"speed-module-2", "advanced-electronics-3"}
data.raw.technology["speed-module-3"].unit =
    {
      count = 200,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    }

data.raw.technology["effectivity-module-2"].prerequisites = {"effectivity-module", "advanced-electronics-2"}
data.raw.technology["effectivity-module-3"].prerequisites = {"effectivity-module-2", "advanced-electronics-3"}
data.raw.technology["effectivity-module-3"].unit =
    {
      count = 200,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    }

