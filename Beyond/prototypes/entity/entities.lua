data:extend({
  {
    type = "assembling-machine",
    name = "fusion-reactor",
    icon = "__Beyond__/graphics/icons/fusion-reactor.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fusion-reactor"},
    max_health = 50,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 0
    },
    allowed_effects = {"productivity"},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animation =
    {

      north={
        filename = "__Beyond__/graphics/entity/fusion-reactor-north-south.png",
        frame_count = 1,
        width = 320,
        height = 288,
        shift = {1.5, 0}
      },east={
        filename = "__Beyond__/graphics/entity/fusion-reactor-east-west.png",
        frame_count = 1,
        width = 320,
        height = 288,
        shift = {1.5, 0}
      },west={
        filename = "__Beyond__/graphics/entity/fusion-reactor-east-west.png",
        frame_count = 1,
        width = 320,
        height = 288,
        shift = {1.5, 0}
      },south={
        filename = "__Beyond__/graphics/entity/fusion-reactor-north-south.png",
        frame_count = 1,
        width = 320,
        height = 288,
        shift = {1.5, 0}
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
    energy_usage = "100kW",

    crafting_categories = {"fusion"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3, 4} },{ type="input", position = {-3, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} },{ position = {-3, -4} }}
      }
    }
  },{
    type = "container",
    name = "rocket-landing-pad",
    icon = "__base__/graphics/icons/steel-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "rocket-landing-pad"},
    max_health = 200,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    inventory_size = 24,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__Beyond__/graphics/entity/landing-pad.png",
      priority = "medium",
      width = 160,
      height = 160,
      shift = {0.0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {2.734375, 2.453125},
        green = {2.609375, 2.515625},
      },
      wire =
      {
        red = {2.40625, 2.21875},
        green = {2.40625, 2.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({2.1875, 2.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },{
    type = "assembling-machine",
    name = "farm",
    icon = "__Beyond__/graphics/icons/farm.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "farm"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 0
    },
    allowed_effects = {"productivity"},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animation =
    {

      north={
        filename = "__Beyond__/graphics/entity/farm-north.png",
        frame_count = 1,
        width = 224,
        height = 224,
        shift = {0, 0}
      },east={
        filename = "__Beyond__/graphics/entity/farm-east.png",
        frame_count = 1,
        width = 224,
        height = 224,
        shift = {0, 0}
      },west={
        filename = "__Beyond__/graphics/entity/farm-west.png",
        frame_count = 1,
        width = 224,
        height = 224,
        shift = {0, 0}
      },south={
        filename = "__Beyond__/graphics/entity/farm-south.png",
        frame_count = 1,
        width = 224,
        height = 224,
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
      emissions = -0.04
    },
    energy_usage = "120kW",

    crafting_categories = {"farm"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -4} }}
      }
    }
  },
    {
    type = "accumulator",
    name = "lithium-ion-accumulator",
    icon = "__Beyond__/graphics/icons/lithium-ion-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "lithium-ion-accumulator"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "20MJ",
      usage_priority = "terciary",
      input_flow_limit = "2MW",
      output_flow_limit = "2MW"
    },
    picture =
    {
      filename = "__Beyond__/graphics/entity/lithium-ion-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.6875, -0.203125}
    },
    charge_animation =
    {
      filename = "__base__/graphics/entity/accumulator/accumulator-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.46875, -0.640625},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__base__/graphics/entity/accumulator/accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.390625, -0.53125},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.984375, 1.10938},
        green = {0.890625, 1.10938}
      },
      wire =
      {
        red = {0.6875, 0.59375},
        green = {0.6875, 0.71875}
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.46875, 0.5}, {0.46875, 0.8125}, 26),
    circuit_wire_max_distance = 7.5,
    default_output_signal = "signal-A"
  }
})
