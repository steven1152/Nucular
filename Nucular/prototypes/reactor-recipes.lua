data:extend({
  {
    icon = "__Nucular__/graphics/icons/nuclear-reaction.png",
    enabled = false,
    type = "recipe",
    name = "nuclear-fission",
    category = "nuclear",
    subgroup = "nuclear-reactor",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="water", amount=10},
      {type="fluid", name="nuclear-fuel-fluid", amount=1}
    },
    results=
    {
      {type="fluid", name="hot-steam", amount=10},
      {type="fluid", name="spent-nuclear-fuel-fluid", amount=1},
    }
  },
  {
    icon = "__Nucular__/graphics/icons/plutonium.png",
    enabled = false,
    type = "recipe",
    name = "fast-breeder",
    category = "nuclear",
    subgroup = "nuclear-reactor",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="water", amount=20},
      {type="fluid", name="nuclear-fuel-fluid", amount=5},
      {type="item", name="depleted-uranium", amount=1}
    },
    results=
    {
      {type="fluid", name="fluid-nothing", amount=0},
      {type="fluid", name="spent-nuclear-fuel-fluid", amount=5},
      {type="item", name="plutonium", amount=1}
    }
  },
  {
    enabled = false,
    type = "recipe",
    name = "nuclear-item-to-fluid",
    category = "nuclear-input",
    subgroup = "nuclear-reactor",
    energy_required = 1,
    ingredients = {
      {type="item", name="nuclear-fuel", amount=1}
    },
    results=
    {
      {type="fluid", name="nuclear-fuel-fluid", amount=100}
    }
  },
  {
    icon = "__Nucular__/graphics/icons/radioactive2.png",
    enabled = false,
    type = "recipe",
    name = "nuclear-fluid-to-item",
    category = "nuclear-output",
    subgroup = "nuclear-reactor",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="spent-nuclear-fuel-fluid", amount=100}
    },
    results=
    {
      {type="item", name="spent-nuclear-fuel", amount=1}
    }
  }
})
