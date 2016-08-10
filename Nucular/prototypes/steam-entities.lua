data:extend(
  {
    {
      order = "a[fluid]-a[water]",
      type = "assembling-machine",
      name = "steam-boiler",
      icon = "__Nucular__/graphics/icons/steam-boiler.png",
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "steam-boiler"},
      max_health = 100,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      working_visualisations =
      {
        {
          north_position = {0.1851, -0.0185},
          west_position = {0.1851, -0.1481},
          south_position = {0.1851, -0.0185},
          east_position = {0.1851, -0.1481},
          animation =
          {
            filename = "__Nucular__/graphics/entity/boiler/boiler-animation.png",
            frame_count = 3,
            width = 54,
            height = 50,
            animation_speed = 0.5
          }
        }
      },
      animation =
      {
        north =
        {
          filename = "__Nucular__/graphics/entity/boiler/boiler-down.png",
          x = 0,
          width = 54,
          height = 50,
          frame_count = 1,
          shift = {0.1851, -0.0185}
        },
        east =
        {
          filename = "__Nucular__/graphics/entity/boiler/boiler-left.png",
          x = 0,
          width = 54,
          height = 50,
          frame_count = 1,
          shift = {0.1851, -0.1481}
        },
        south =
        {
          filename = "__Nucular__/graphics/entity/boiler/boiler-down.png",
          x = 0,
          width = 54,
          height = 50,
          frame_count = 1,
          shift = {0.1851, -0.0185}
        },
        west =
        {
          filename = "__Nucular__/graphics/entity/boiler/boiler-left.png",
          x = 0,
          width = 54,
          height = 50,
          frame_count = 1,
          shift = {0.1851, -0.1481}
        }
      },
      module_specification =
      {
        module_slots = 0
      },
      allowed_effects = {"productivity"},
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      crafting_speed = 1,
      ingredient_count = 4,

      energy_source =
    {
      type = "burner",
      effectivity = 0.5,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 9
        }
      }
    },
      energy_usage = "500kW",
      fluid_boxes =
      {
        {
          base_area = 1,
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_level = -1,
          pipe_connections = {{ type="input", position = {0, 1} }}
        },
        {
          base_area = 1,
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {0, -1} }}
        }
      },

      crafting_categories = {"steam-boiler"}
    }

  }
)
