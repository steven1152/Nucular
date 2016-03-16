data:extend(
  {
    {
      enabled = false,
      type = "recipe",
      name = "uranium-cannon-shell",
      energy_required = 10,
      ingredients = {
        {"steel-plate", 4},
        {"depleted-uranium", 2},
        {"explosives", 1}},
      result="uranium-cannon-shell"
    },
    {
      enabled = false,
      type = "recipe",
      name = "uranium-bullet-magazine",
      energy_required = 4,
      ingredients = {
        {"steel-plate", 1},
        {"depleted-uranium", 1}},
      result="uranium-bullet-magazine"
    },
    {
      enabled = false,
      type = "recipe",
      name = "uranium-warhead",
      icon = "__Nucular__/graphics/icons/nuclear-warhead.png",
      energy_required = 360,
      ingredients = {
        {"enriched-uranium", 30}
      },
      result="nuclear-warhead"
    },
    {
      enabled = false,
      type = "recipe",
      name = "plutonium-warhead",
      icon = "__Nucular__/graphics/icons/nuclear-warhead.png",
      energy_required = 12,
      ingredients = {
        {"plutonium", 10}
      },
      result="nuclear-warhead"
    },
  {
    type = "recipe",
    name = "nuclear-rocket",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {"rocket", 1},
      {"nuclear-warhead", 1}
    },
    result = "nuclear-rocket"
  }
  }
)
