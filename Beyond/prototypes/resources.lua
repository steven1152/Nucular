data:extend(
{
  
  {
    type = "resource",
    name = "lithium-brine",
    icon = "__Beyond__/graphics/icons/lithium-brine.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    order="a-b-a",
    infinite = true,
    minimum = 3000,
    normal = 15000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lithium-brine",
          amount_min = 1,
          amount_max = 1,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    autoplace =
    {
      control = "lithium-brine",
      sharpness = 0.99,
      max_probability = 0.035,
      richness_base = 7500,
      richness_multiplier = 15000,
      richness_multiplier_distance_bonus = 10,
      coverage = 0.015, -- Cover on average 2% of surface area.
      peaks =
      {
        {
          noise_layer = "lithium-brine",
          noise_octaves_difference = -1,
          noise_persistence = 0.4,
        }
      }
    },
    stage_counts = {15000,10000,5000,0},
    stages =
    {
      sheet =
      {
        filename = "__Beyond__/graphics/entity/lithium-brine.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 4
      }
    },
    map_color = {r=0.7, g=0.7, b=1.0},
    map_grid = false
  }
})

data:extend(
  {
    {
      type = "resource",
      name = "silicon-ore",
      icon = "__Beyond__/graphics/icons/silicon-ore.png",
      flags = {"placeable-neutral"},
      order="a-b-e",
      minable =
      {
        hardness = 0.9,
        mining_particle = "stone-particle",
        mining_time = 2,
        result = "silicon-ore"
      },
      collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
      selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
      autoplace = {
        control = "silicon-ore",
        sharpness = 1,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 20,
        richness_base = 500,
        coverage = 0.015,
        peaks = {
          {
            noise_layer = "silicon-ore",
            noise_octaves_difference = -1.5,
            noise_persistence = 0.3,
          },
        }
      },
      stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
      stages =
      {
        sheet =
        {
          filename = "__Beyond__/graphics/entity/silicon-ore.png",
          priority = "extra-high",
          width = 38,
          height = 38,
          frame_count = 4,
          variation_count = 8
        }
      },
      map_color = {r=0.95, g=0.95, b=0.95}
    }
  })
