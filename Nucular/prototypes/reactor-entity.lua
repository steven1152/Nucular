function reactorpipepicturesin()
  return
    {
      north =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 32,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      },
      east =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 64,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      },
      south =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 96,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      },
      west =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 0,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      }
    }
end

function reactorpipepicturesout()
  return
    {
      north =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 96,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      },
      east =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 0,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      },
      south =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 32,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      },
      west =
      {
        filename = "__Nucular__/graphics/entity/reactor-inout-ghost.png",
        x = 64,
        width = 32,
        height = 32,
        priority = "very-low",
        frame_count = 1,
        shift = {0.0, 0}
      }
    }
end



data:extend(
  {
    {
      type = "assembling-machine",
      name = "nuclear-reactor",
      icon = "__Nucular__/graphics/icons/nuclear-reactor.png",
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "nuclear-reactor"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification =
      {
        module_slots = 0
      },
      allowed_effects = {"productivity"},
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      animation =
      {
        north={
          filename = "__Nucular__/graphics/entity/nuclear-plant.png",
          frame_count = 1,
          width = 96,
          height = 96,
          shift = {0, 0}
        },east={
          filename = "__Nucular__/graphics/entity/nuclear-plant.png",
          frame_count = 1,
          width = 96,
          height = 96,
          shift = {0, 0}
        },west={
          filename = "__Nucular__/graphics/entity/nuclear-plant.png",
          frame_count = 1,
          width = 96,
          height = 96,
          shift = {0, 0}
        },south={
          filename = "__Nucular__/graphics/entity/nuclear-plant-back.png",
          frame_count = 1,
          width = 96,
          height = 96,
          shift = {0, 0}
        }
      },
      working_sound =
      {
        sound =
        {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.0
          }
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_speed = 1,
      ingredient_count = 4,

      energy_source =
      {
        
        type = "electric",
        usage_priority = "primary-input",
        emissions = 0
      },
      energy_usage = "1kW",

      crafting_categories = {"nuclear"},
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {-2, 1} },{ type="input", position = {-1, 2} }}
        },
        {
          production_type = "input",
          pipe_covers = reactorpipepicturesin(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {-2, -1} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {2, 1} },{ position = {1, 2} }}
        },
        {
          production_type = "output",
          pipe_covers = reactorpipepicturesout(),
          base_level = 1,
          pipe_connections = {{ position = {2, -1} }}
        }
      }
    },
    {
      order = "a[fluid]-a[water]",
      type = "assembling-machine",
      name = "nuclear-reactor-input",
      icon = "__Nucular__/graphics/icons/nuclear-reactor.png",
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      max_health = 0,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      animation =
      {
        north =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 0,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        },
        east =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 32,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        },
        south =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 64,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        },
        west =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 96,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
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
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.03 / 3.5
      },
      energy_usage = "210kW",
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {1, 0} }}
        }
      },

      crafting_categories = {"nuclear-input"}
    },
    {
      order = "a[fluid]-a[water]",
      type = "assembling-machine",
      name = "nuclear-reactor-output",
      icon = "__Nucular__/graphics/icons/nuclear-reactor.png",
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      max_health = 0,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      animation =
      {
        north =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 0,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        },
        east =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 32,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        },
        south =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 64,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        },
        west =
        {
          filename = "__Nucular__/graphics/entity/reactor-inout.png",
          x = 96,
          width = 32,
          height = 32,
          frame_count = 1,
          shift = {0.0, 0}
        }
      },
      module_specification =
      {
        module_slots = 0
      },
      allowed_effects = { "productivity"},
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      crafting_speed = 1,
      ingredient_count = 4,

      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.03 / 3.5
      },
      energy_usage = "210kW",
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 1,
          base_level = 1,
          pipe_connections = { {type="input", position = {-1, 0} }}
        }
      },

      crafting_categories = {"nuclear-output"}
    }
  })
