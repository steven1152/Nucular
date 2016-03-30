data:extend(
{
  {
    type = "item",
    name = "uranium-ore",
    icon = "__Nucular__/graphics/icons/uranium-ore-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-intermediate",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "uranium",
    icon = "__Nucular__/graphics/icons/uranium.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-intermediate",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "enriched-uranium",
    icon = "__Nucular__/graphics/icons/enriched-uranium.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-intermediate",
    order = "c",
    stack_size = 50
  },
  {
    type = "item",
    name = "depleted-uranium",
    icon = "__Nucular__/graphics/icons/depleted-uranium.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-resource",
    order = "d",
    stack_size = 50
  },
  {
    type = "item",
    name = "nuclear-fuel",
    icon = "__Nucular__/graphics/icons/nuclear-fuel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-fuel",
    order = "a",
    stack_size = 10
  },
  {
    type = "item",
    name = "spent-nuclear-fuel",
    icon = "__Nucular__/graphics/icons/spent-nuclear-fuel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-fuel",
    order = "b",
    stack_size = 10
  },
  {
    type = "item",
    name = "plutonium",
    icon = "__Nucular__/graphics/icons/plutonium.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-intermediate",
    order = "e",
    stack_size = 50
  },
  {
    type = "item",
    name = "nuclear-reactor",
    icon = "__Nucular__/graphics/icons/nuclear-reactor.png",
    flags = {"goes-to-quickbar"},
    subgroup = "nuclear-structure",
    place_result = "nuclear-reactor",
    order = "a",
    stack_size = 10
  },
  
  {
    type = "item",
    name = "steam-turbine",
    icon = "__Nucular__/graphics/icons/steam-turbine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "nuclear-structure",
    place_result = "steam-turbine",
    order = "b",
    stack_size = 10
  },
  {
    type = "fluid",
    name = "nuclear-fuel-fluid",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.2, g=0.8, b=0.2},
    flow_color = {r=0.4, g=0.9, b=0.4},
    icon = "__Nucular__/graphics/icons/radioactive.png",
    order = "a[fluid]-y[]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "spent-nuclear-fuel-fluid",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.2, g=0.8, b=0.2},
    flow_color = {r=0.4, g=0.9, b=0.4},
    icon = "__Nucular__/graphics/icons/radioactive2.png",
    order = "a[fluid]-z[]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "fluid-nothing",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.9, g=0.9, b=0.9},
    icon = "__Nucular__/graphics/icons/nothing.png",
    order = "a[fluid]-b[]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "hot-steam",
    default_temperature = 0,
    max_temperature = 1000,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.9, g=0.9, b=0.9},
    icon = "__Nucular__/graphics/icons/steam.png",
    order = "a[fluid]-b[]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  }
  
})