data:extend({
  {
    type = "item",
    name = "asteroid-mining-drill",
    icon = "__Beyond__/graphics/icons/asteroid-mining-drill.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "q-a",
    stack_size = 1
  },
  {
    type = "item",
    name = "rocket-landing-pad",
    place_result = "rocket-landing-pad",
    icon = "__Beyond__/graphics/icons/rocket-landing-pad.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "defensive-structure",
    order = "f-a",
    stack_size = 10
  },
  {
    type = "item",
    name = "fusion-reactor",
    icon = "__Beyond__/graphics/icons/fusion-reactor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "nuclear-intermediate",
    place_result = "fusion-reactor",
    order = "f",
    stack_size = 10
  },
  {
    type = "item",
    name = "farm",
    icon = "__Beyond__/graphics/icons/farm.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "extraction-machine",
    place_result = "farm",
    order = "c",
    stack_size = 10
  },
  {
    type = "item",
    name = "lithium-ion-accumulator",
    icon = "__Beyond__/graphics/icons/lithium-ion-accumulator.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "energy",
    place_result = "lithium-ion-accumulator",
    order = "e[accumulator]-b",
    stack_size = 10
  },
  {
    type = "item",
    name = "maglev-cargo-wagon",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-g[cargo-wagon]",
    place_result = "maglev-cargo-wagon",
    stack_size = 5
  },
  {
    type = "item",
    name = "maglev-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-f[diesel-locomotive]",
    place_result = "maglev-locomotive",
    stack_size = 5
  },
  {
    type = "tool",
    name = "science-pack-4",
    icon = "__Beyond__/graphics/icons/science-pack-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "a[science-pack-4]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "item",
    name = "assembling-machine-4",
    icon = "__Beyond__/graphics/icons/assembling-machine-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "c[assembling-machine-4]",
    place_result = "assembling-machine-4",
    stack_size = 50
  },
  {
    type = "item",
    name = "chemical-plant-2",
    icon = "__Beyond__/graphics/icons/chemical-plant-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "e[chemical-plant-2]",
    place_result = "chemical-plant-2",
    stack_size = 10
  },
  {
    type = "item",
    name = "logistic-robot-2",
    icon = "__Beyond__/graphics/icons/logistic-robot-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "a[robot]-a[logistic-robot]-b",
    place_result = "logistic-robot-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "construction-robot-2",
    icon = "__Beyond__/graphics/icons/construction-robot-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "logistic-network",
    order = "a[robot]-b[construction-robot]-b",
    place_result = "construction-robot-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-2",
    icon = "__Beyond__/graphics/icons/solar-panel-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]-b",
    place_result = "solar-panel-2",
    stack_size = 50
  },
})
