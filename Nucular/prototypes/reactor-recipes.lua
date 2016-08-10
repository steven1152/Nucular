
data:extend({
  {
    icon = "__Nucular__/graphics/icons/nuclear-reaction.png",
    enabled = false,
    type = "recipe",
    name = "nuclear-fission",
    category = "nuclear",
    subgroup = "nuclear-reactor",
    energy_required = 10,
    ingredients = {
      {type="fluid", name="water", amount= 400},
      {type="item", name="nuclear-fuel", amount=1}
    },
    results=
    {
      {type="fluid", name="hot-steam", amount= 400, temperature=250},
      {type="item", name="spent-nuclear-fuel", amount=1},
    }
  },
  {
    icon = "__Nucular__/graphics/icons/plutonium.png",
    enabled = false,
    type = "recipe",
    name = "fast-breeder",
    category = "nuclear",
    subgroup = "nuclear-reactor",
    energy_required = 30,
    ingredients = {
      {type="item", name="nuclear-fuel", amount=1},
      {type="item", name="depleted-uranium", amount=1}
    },
    results=
    {
      {type="item", name="spent-nuclear-fuel", amount=1},
      {type="item", name="plutonium", amount=1}
    }
  }
})
