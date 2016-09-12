data:extend({
  {
    type = "gun",
    name = "gauss-rifle",
    icon = "__base__/graphics/icons/railgun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "c[railgun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "gauss-rifle",
      cooldown = 60,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/railgun.ogg",
          volume = 0.8
        }
      }
    },
    stack_size = 5
  },
  {
    type = "ammo",
    name = "gauss-rifle-ammo",
    icon = "__base__/graphics/icons/railgun-ammo.png",
    flags = {"goes-to-main-inventory", "hidden"},
    ammo_type =
    {
      category = "gauss-rifle",
      target_type = "direction",
      action =
      {
        type = "line",
        range = 50,
        width = 0.5,

        source_effects =
        {
          type = "create-explosion",
          entity_name = "railgun-beam"
        },
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = { amount = 500, type="physical"}
          }
        }
      }
    },
    magazine_size = 4,
    subgroup = "ammo",
    order = "c[railgun]",
    stack_size = 100
  }
})
