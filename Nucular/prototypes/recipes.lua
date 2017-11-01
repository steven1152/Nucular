data:extend(
  {
    {
      enabled = false,
      type = "recipe",
      name = "uranium",
      category = "chemistry",
      energy_required = 12,
      enabled = false,
      ingredients =
      {
        {type="fluid", name="sulfuric-acid", amount=1},
        {type="item", name="uranium-ore", amount=5}
      },
      results=
      {
        {type="item", name="uranium", amount=5}
      }
    },
    {
      icon = "__Nucular__/graphics/icons/enriched-uranium.png",
      enabled = false,
      type = "recipe",
      name = "uranium-enrichment",
      subgroup = "nuclear-intermediate",
      order = "b",
      energy_required = 24,
      ingredients = {{"uranium", 5}},
      results=
      {
        {type="item", name="depleted-uranium", amount=4},
        {type="item", name="enriched-uranium", amount=1}
      }
    },
    {
      enabled = false,
      type = "recipe",
      name = "nuclear-fuel",
      icon = "__Nucular__/graphics/icons/nuclear-fuel-uranium.png",
      subgroup = "nuclear-fuel",
      energy_required = 6,
      ingredients = {{"enriched-uranium", 1}, {"iron-plate",1}},
      result="nuclear-fuel"
    },
    {
      enabled = false,
      type = "recipe",
      name = "MOX-fuel",
      icon = "__Nucular__/graphics/icons/nuclear-fuel-plutonium.png",
      subgroup = "nuclear-fuel",
      energy_required = 18,
      ingredients = {{"plutonium", 1},{"uranium", 2}, {"iron-plate",3}},
      result_count = 3,
      result="nuclear-fuel"
    },
    {
      icon = "__Nucular__/graphics/icons/nuclear-reprocessing.png",
      enabled = false,
      type = "recipe",
      name = "nuclear-reprocessing",
      subgroup = "nuclear-fuel",
      energy_required = 24,
      ingredients = {{"spent-nuclear-fuel",12}},
      results=
      {
        {type="item", name="uranium", amount=8},
        {type="item", name="plutonium", amount=1}
      }
    }, {
      enabled = false,
      type = "recipe",
      name = "nuclear-reactor",
      ingredients = {
        {"nuclear-fuel", 50},
        {"steel-plate", 200},
        {"concrete", 300},
        {"advanced-circuit", 50},
        {"pipe", 50}
      },
      result="nuclear-reactor"
    },  {
      enabled = false,
      type = "recipe",
      name = "steam-turbine",
      ingredients = {
        {"pipe", 20},
        {"electric-engine-unit", 20},
        {"steel-plate", 40}
      },
      result="steam-turbine"
    }
  }
)
