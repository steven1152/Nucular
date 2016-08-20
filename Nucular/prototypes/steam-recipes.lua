data:extend({
 {
    type = "recipe",
    name = "water-to-steam",
    category = "steam-boiler",
    enabled = true,
    energy_required = 0.25,
    ingredients =
    {
      {type="fluid", name="water", amount=1},
    },
    results=
    {
      {type="fluid", name="hot-steam", amount=1, temperature=250}
    },
    subgroup = "fluid-recipes",
    order = "a"
  },
  {
    enabled = false,
    type = "recipe",
    name = "steam-boiler",
    energy_required = 5,
    ingredients = {
      {"stone-furnace", 1},
      {"pipe", 10},
      {"steel-plate", 10}
    },
    result="steam-boiler"
  }
})
if nucular.advanced_steam then

  data:extend({
    {
      type = "recipe",
      name = "advanced-oil-processing",
      category = "oil-processing",
      enabled = false,
      energy_required = 5,
      ingredients =
      {
        {type="fluid", name="hot-steam", amount=4},
        {type="fluid", name="crude-oil", amount=10}
      },
      results=
      {
        {type="fluid", name="heavy-oil", amount=1},
        {type="fluid", name="light-oil", amount=4.5},
        {type="fluid", name="petroleum-gas", amount=5.5}
      },
      icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",
      subgroup = "fluid-recipes",
      order = "a[oil-processing]-b[advanced-oil-processing]"
    }, {
      type = "recipe",
      name = "heavy-oil-cracking",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      ingredients =
      {
        {type="fluid", name="hot-steam", amount=3},
        {type="fluid", name="heavy-oil", amount=4}
      },
      results=
      {
        {type="fluid", name="light-oil", amount=3}
      },
      main_product= "",
      icon = "__base__/graphics/icons/fluid/heavy-oil-cracking.png",
      subgroup = "fluid-recipes",
      order = "b[fluid-chemistry]-a[heavy-oil-cracking]"
    },
  
    {
      type = "recipe",
      name = "light-oil-cracking",
      category = "chemistry",
      enabled = false,
      energy_required = 5,
      ingredients =
      {
        {type="fluid", name="hot-steam", amount=3},
        {type="fluid", name="light-oil", amount=3}
      },
      results=
      {
        {type="fluid", name="petroleum-gas", amount=2}
      },
      main_product= "",
      icon = "__base__/graphics/icons/fluid/light-oil-cracking.png",
      subgroup = "fluid-recipes",
      order = "b[fluid-chemistry]-b[light-oil-cracking]"
    }
  })
end
