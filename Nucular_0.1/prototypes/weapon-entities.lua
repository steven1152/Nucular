

data:extend(
  {
    smoke{
      name="nuclear-smoke",
      spread_duration = 600,
      duration = 600,
      start_scale = 0.5,
      end_scale = 2,
      affected_by_wind = false
    },
    smoke{
      name="nuclear-smoke2",
      spread_duration = 0,
      duration = 120,
      fade_away_duration = 120,
      start_scale = 0.5,
      end_scale = 1,
      affected_by_wind = false
    },
    {
      type = "projectile",
      name = "uranium-cannon-projectile",
      flags = {"not-on-map"},
      collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
      acceleration = 0,
      direction_only = true,
      piercing_damage = 150,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = { amount = 250 , type = "physical"}
            },
            {
              type = "damage",
              damage = { amount = 50 , type = "explosion"}
            }
          }
        }
      },
      final_action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      animation =
      {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        frame_count = 1,
        width = 3,
        height = 50,
        priority = "high"
      },
    },


    {
      type = "projectile",
      name = "nuclear-rocket",
      flags = {"not-on-map"},
      acceleration = 0.005,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              repeat_count = 100,
              type = "create-smoke",
              entity_name = "nuclear-smoke2",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.5,
              speed_deviation = 0.2
            },
            {
              type = "create-entity",
              entity_name = "radiation-cloud",
              trigger_created_entity = "true"
            },
            {
              type = "nested-result",
              action =
              {
                type = "area",
                perimeter = 6.5,
                action_delivery =
                {
                  type = "instant",
                  target_effects =
                  {
                    {
                      type = "damage",
                      damage = {amount = 1000, type = "explosion"}
                    },
                    {
                      type = "create-entity",
                      entity_name = "explosion"
                    }
                  }
                }
              },
            }
          }
        }
      },
      light = {intensity = 0.5, size = 4},
      animation =
      {
        filename = "__base__/graphics/entity/rocket/rocket.png",
        frame_count = 8,
        line_length = 8,
        width = 9,
        height = 35,
        shift = {0, 0},
        priority = "high"
      },
      shadow =
      {
        filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
        frame_count = 1,
        width = 7,
        height = 24,
        priority = "high",
        shift = {0, 0}
      },
      smoke =
      {
        {
          name = "smoke-fast",
          deviation = {0.15, 0.15},
          frequency = 1,
          position = {0, -1},
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },

    {
      type = "smoke-with-trigger",
      name = "radiation-cloud",
      flags = {"not-on-map"},
      show_when_smoke_off = true,
      animation =
      {
        filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
        priority = "very-low",
        width = 256,
        height = 256,
        frame_count = 45,
        animation_speed = 0.2,
        line_length = 7,
        scale = 5,
      },
      slow_down_factor = 0,
      affected_by_wind = false,
      cyclic = true,
      duration = 60 * 120,
      fade_away_duration = 20 * 60,
      spread_duration = 2*60,
      color = { r = 0.2, g = 0.9, b = 0.2,a =0.5 },
      action =
      {

        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
           --[[ {
              repeat_count = 2,
              type = "create-smoke",
              entity_name = "nuclear-smoke",
              initial_height = 0,
              -- smoke goes to the left
              speed = {0, -0.5},
              offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}

            },
            {
              repeat_count = 5,
              type = "create-smoke",
              entity_name = "nuclear-smoke",
              initial_height = 0,
              -- smoke goes to the left
              speed = {0, -0.5},
              offset_deviation = {{-4, -5}, {4, -6}}

            },]]--
            {
              type = "nested-result",
              action =
              {
                type = "area",
                perimeter = 10,
                action_delivery =
                {
                  type = "instant",
                  target_effects =
                  {
                    type = "damage",
                    damage = { amount = 6, type = "poison"}
                  }
                }
              }
            },
            {
              type = "nested-result",
              action =
              {
                type = "area",
                perimeter = 18,
                entity_flags = {"breaths-air"},
                action_delivery =
                {
                  type = "instant",
                  target_effects =
                  {
                    type = "damage",
                    damage = { amount = 4, type = "poison"}
                  }
                }
              }
            }
          }
        }
      },
      action_frequency = 30
    }
  }
)
