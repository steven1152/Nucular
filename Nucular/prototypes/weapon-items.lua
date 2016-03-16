data:extend(
  {
    {
      type = "ammo",
      name = "uranium-cannon-shell",
      icon = "__Nucular__/graphics/icons/uranium-cannon-shell.png",
      flags = {"goes-to-main-inventory"},
      ammo_type =
      {
        category = "cannon-shell",
        target_type = "direction",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "uranium-cannon-projectile",
            starting_speed = 1,
            direction_deviation = 0.1,
            range_deviation = 0.1,
            max_range = 30,
            source_effects =
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
          }
        },
      },
      subgroup = "nuclear-weapon",
      order = "a",
      stack_size = 100
    },
    {
      type = "ammo",
      name = "uranium-bullet-magazine",
      icon = "__Nucular__/graphics/icons/uranium-bullet-magazine.png",
      flags = {"goes-to-main-inventory"},
      ammo_type =
      {
        category = "bullet",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "explosion-hit"
              },
              {
                type = "damage",
                damage = { amount = 8 , type = "physical"}
              }
            }
          }
        }
      },
      magazine_size = 10,
      subgroup = "nuclear-weapon",
      order = "b",
      stack_size = 100
    },
    {
      type = "item",
      name = "nuclear-warhead",
      icon = "__Nucular__/graphics/icons/nuclear-warhead.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "nuclear-weapon",
      order = "c",
      stack_size = 50
    },
  {
    type = "ammo",
    name = "nuclear-rocket",
    icon = "__Nucular__/graphics/icons/atomic-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "nuclear-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    subgroup = "nuclear-weapon",
    order = "d",
    stack_size = 100
  }
  }
)
