
data:extend({
  {
    enabled = false,
    type = "recipe",
    name = "superconducting-magnet",
    energy_required = 20,
    ingredients = {
      {"superconducting-cable", 8},
      {"advanced-circuit", 2}
    },
    result="superconducting-magnet"
  },{
    enabled = false,
    type = "recipe",
    name = "superconducting-cable",
    energy_required = 1,
    ingredients = {
      {"titanium", 1},
      {"copper-plate", 1}
    },
    result_count = 2,
    result="superconducting-cable"
  },{
    enabled = false,
    type = "recipe",
    name = "silicon",
    category = "chemistry",
    energy_required = 20,
    ingredients = {
      {"silicon-ore", 10},
      {"coal", 2}
    },
    result="silicon"
  },{
    enabled = false,
    type = "recipe",
    name = "silicon-wafer",
    energy_required = 2,
    ingredients = {
      {"silicon", 1}
    },
    result_count = 4,
    result="silicon-wafer"
  },{
    enabled = false,
    type = "recipe",
    name = "microprocessor",
    category = "crafting-with-fluid",
    energy_required = 10,
    ingredients = {
      {type="item", name="silicon-wafer", amount=1},
      {type="fluid", name="sulfuric-acid", amount=0.5}
    },
    result="microprocessor"
  },{
    enabled = false,
    type = "recipe",
    name = "processing-unit",
    energy_required = 5,
    ingredients = {
      {"electronic-circuit", 10},
      {"advanced-circuit", 2},
      {"microprocessor", 1}
    },
    result="processing-unit"
  },{
    enabled = false,
    type = "recipe",
    name = "quantum-microprocessor",
    category = "crafting-with-fluid",
    energy_required = 30,
    ingredients = {
      {type="item", name="superconducting-cable", amount=3},
      {type="item", name="silicon-wafer", amount=1},
      {type="fluid", name="sulfuric-acid", amount=0.5}
    },
    result="quantum-microprocessor"
  },{
    enabled = false,
    type = "recipe",
    name = "advanced-processing-unit",
    energy_required = 10,
    ingredients = {
      {"advanced-circuit", 6},
      {"quantum-microprocessor", 2},
      {"microprocessor", 2}
    },
    result="advanced-processing-unit"
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"solar-panel-2", 10},
      {"processing-unit", 5},
      {"steel-plate", 5}
    },
    result = "solar-panel-equipment-2"
  }
})
