data:extend(
{
  {
    type = "technology",
    name = "uranium-processing",
    icon = "__Nucular__/graphics/technology/uranium.png",
    prerequisites = {"sulfur-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-enrichment"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-bullet-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-cannon-shell"
      }
    },
    unit =
    {
      count = 75,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 30
    },
    order = "f-nuc-a"
  },
  {
    type = "technology",
    name = "nuclear-reactor",
    icon = "__Nucular__/graphics/technology/reaction.png",
    prerequisites = {"advanced-electronics","uranium-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      },
      {
        type = "unlock-recipe",
        recipe = "nuclear-fuel"
      },
      {
        type = "unlock-recipe",
        recipe = "nuclear-fission"
      },
      {
        type = "unlock-recipe",
        recipe = "nuclear-fluid-to-item"
      },
      {
        type = "unlock-recipe",
        recipe = "nuclear-item-to-fluid"
      }
    },
    unit =
    {
      count = 150,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 30
    },
    order = "f-nuc-b"
  },
  {
    type = "technology",
    name = "nuclear-reprocessing",
    icon = "__Nucular__/graphics/technology/renewable.png",
    prerequisites = {"automation-3","nuclear-reactor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-reprocessing"
      },
      {
        type = "unlock-recipe",
        recipe = "MOX-fuel"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "f-nuc-c"
  },
  {
    type = "technology",
    name = "breeder-reactor",
    icon = "__Nucular__/graphics/technology/plutonium.png",
    prerequisites = {"nuclear-reactor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-breeder"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "f-nuc-d"
  },
  {
    type = "technology",
    name = "particle-physics",
    icon = "__Nucular__/graphics/technology/particle-physics.png",
    prerequisites = {"nuclear-reprocessing", "alien-technology"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "plutonium-science-pack"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "f-nuc-f"
  },
  {
    type = "technology",
    name = "atomic-bomb",
    icon = "__Nucular__/graphics/technology/atomic-bomb.png",
    prerequisites = {"nuclear-reprocessing", "alien-technology"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-warhead"
      },{
        type = "unlock-recipe",
        recipe = "plutonium-warhead"
      },{
        type = "unlock-recipe",
        recipe = "nuclear-rocket"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 30
    },
    order = "f-nuc-e"
  }
})