
data:extend({
  {
    enabled = false,
    type = "recipe",
    name = "fusion-reactor",
    ingredients = {
      {"steel-plate", 500},
      {"superconducting-magnet", 200},
      {"advanced-processing-unit", 100},
      {"pipe", 200}
    },
    result="fusion-reactor"
  }, {
    enabled = false,
    type = "recipe",
    name = "rocket-landing-pad",
    ingredients = {
      {"steel-plate", 10},
      {"concrete", 10}
    },
    result="rocket-landing-pad"
  }, {
    enabled = false,
    type = "recipe",
    name = "lithium-ion-accumulator",
    ingredients = {
      {"steel-plate", 2},
      {"lithium-ion-battery", 5},
      {"advanced-circuit", 2}
    },
    result="lithium-ion-accumulator"
  }, {
    enabled = false,
    type = "recipe",
    name = "asteroid-mining-drill",
    ingredients = {
      {"steel-plate", 100},
      {"processing-unit", 10},
      {"electric-mining-drill", 10}
    },
    result="asteroid-mining-drill"
  }, {
    type = "recipe",
    name = "maglev-locomotive",
    enabled = false,
    ingredients =
    {
      {"superconducting-magnet", 20},
      {"processing-unit", 30},
      {"steel-plate", 30}
    },
    result = "maglev-locomotive"
  }, {
    type = "recipe",
    name = "maglev-cargo-wagon",
    enabled = false,
    ingredients =
    {
      {"superconducting-magnet", 10},
      {"steel-plate", 30}
    },
    result = "maglev-cargo-wagon"
  }, {
    type = "recipe",
    name = "science-pack-4",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {"lithium-ion-battery", 1},
      {"titanium-gear-wheel", 1},
      {"processing-unit", 1}
    },
    result_count = 1,
    result = "science-pack-4"
  }, {
    enabled = false,
    type = "recipe",
    name = "farm",
    ingredients = {
      {"iron-plate", 10},
      {"pipe", 8}
    },
    result="farm"
  },
  {
    type = "recipe",
    name = "assembling-machine-4",
    enabled = false,
    ingredients =
    {
      {"speed-module-3", 1},
      {"titanium-gear-wheel", 12},
      {"assembling-machine-3", 1}
    },
    result = "assembling-machine-4"
  },
  {
    type = "recipe",
    name = "chemical-plant-2",
    enabled = false,
    ingredients =
    {
      {"speed-module-3", 1},
      {"titanium-gear-wheel", 12},
      {"chemical-plant", 1}
    },
    result= "chemical-plant-2"
  },
  {
    type = "recipe",
    name = "logistic-robot-2",
    enabled = false,
    ingredients =
    {
      {"flying-robot-frame-2", 1},
      {"processing-unit", 1}
    },
    result = "logistic-robot-2"
  },
  {
    type = "recipe",
    name = "construction-robot-2",
    enabled = false,
    ingredients =
    {
      {"flying-robot-frame-2", 1},
      {"processing-unit", 1}
    },
    result = "construction-robot-2"
  },
  {
    type = "recipe",
    name = "solar-panel-2",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"silicon-wafer", 10},
      {"advanced-circuit", 5},
      {"glass", 10}
    },
    result = "solar-panel-2"
  },
})
