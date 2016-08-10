
data:extend(
  {
    {
      type = "resource",
      name = "uranium-ore",
      icon = "__Nucular__/graphics/icons/uranium-ore-icon.png",
      flags = {"placeable-neutral"},
      order="a-b-e",
      minable =
      {
        hardness = 0.9,
        mining_particle = "stone-particle",
        mining_time = 4,
        result = "uranium-ore"
      },
      collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
      selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
      autoplace = {
        control = "uranium-ore",
        sharpness = 1,
        richness_multiplier = 3000,
        richness_multiplier_distance_bonus = 20,
        richness_base = 500,
        coverage = 0.01,
        peaks = {
          {
            noise_layer = "uranium-ore",
            noise_octaves_difference = -1.5,
            noise_persistence = 0.3,
          },
        },
        starting_area_size = 600 * 0.005,
        starting_area_amount = 600
      },
      stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
      stages =
      {
        sheet =
        {
          filename = "__Nucular__/graphics/entity/uranium-ore.png",
          priority = "extra-high",
          width = 38,
          height = 38,
          frame_count = 4,
          variation_count = 8
        }
      },
      map_color = {r=0.8, g=0.78, b=0.23}
    }
  })
