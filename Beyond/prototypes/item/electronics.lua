data:extend({
  {
    type = "item",
    name = "superconducting-cable",
    icon = "__Beyond__/graphics/icons/superconducting-cable.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "a[copper-cable]-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "superconducting-magnet",
    icon = "__Beyond__/graphics/icons/superconducting-magnet.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "ca-e",
    stack_size = 50
  },
  {
    type = "item",
    name = "silicon",
    icon = "__Beyond__/graphics/icons/silicon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "f-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "silicon-wafer",
    icon = "__Beyond__/graphics/icons/silicon-wafer.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "ca-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "microprocessor",
    icon = "__Beyond__/graphics/icons/microprocessor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "ca-c",
    stack_size = 50
  },
  {
    type = "item",
    name = "quantum-microprocessor",
    icon = "__Beyond__/graphics/icons/quantum-microprocessor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "ca-d",
    stack_size = 50
  },
  {
    type = "item",
    name = "advanced-processing-unit",
    icon = "__Beyond__/graphics/icons/advanced-processing-unit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "f[processing-unit]-b",
    stack_size = 50
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-2",
    sprite =
    {
      filename = "__Beyond__/graphics/icons/solar-panel-equipment-2.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "30kW",
    categories = {"armor"}
  },
  {
    type = "item",
    name = "solar-panel-equipment-2",
    icon = "__Beyond__/graphics/icons/solar-panel-equipment-2.png",
    placed_as_equipment_result = "solar-panel-equipment-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel]-b",
    stack_size = 20
  },
})
