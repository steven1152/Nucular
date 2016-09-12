
data:extend({
  {
    type = "recipe",
    name = "lithium",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="lithium-brine", amount=10}
    },
    result="lithium"
  },{
    type = "recipe",
    name = "lithium-ion-battery",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {type="item", name="lithium", amount=1},
      {type="item", name="coal", amount=1},
      {type="item", name="iron-plate", amount=1}
    },
    result="lithium-ion-battery"
  },{
    enabled = false,
    type = "recipe",
    name = "nitric-acid",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="ammonia", amount=1}
    },
    results={{type="fluid", name="nitric-acid", amount=1}},
    subgroup = "fluid-recipes",
    order = "c-d"
  },{
    enabled = false,
    type = "recipe",
    name = "ammonium-nitrate",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="ammonia", amount=1},
      {type="fluid", name="nitric-acid", amount=1}
    },
    results={{type="fluid", name="ammonium-nitrate", amount=2}},
    subgroup = "fluid-recipes",
    order = "c-e"
  },{
    enabled = false,
    type = "recipe",
    name = "ammonia",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="hydrogen", amount=1},
      {type="fluid", name="water", amount=1}
    },
    results={{type="fluid", name="ammonia", amount=1}},
    subgroup = "fluid-recipes",
    order = "c-c"
  },{
    enabled = false,
    type = "recipe",
    name = "steam-reforming",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="petroleum-gas", amount=1},
      {type="fluid", name="water", amount=2}
    },
    results={{type="fluid", name="hydrogen", amount=4}},
    subgroup = "fluid-recipes",
    order = "c-b-a"
  },{
    enabled = false,
    type = "recipe",
    name = "liquid-hydrogen",
    category = "chemistry",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="hydrogen", amount=4},
    },
    results={{type="fluid", name="liquid-hydrogen", amount=1}},
    subgroup = "fluid-recipes",
    order = "c-f-a"
  },{
    enabled = false,
    type = "recipe",
    name = "hydrogen",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="liquid-hydrogen", amount=1},
    },
    results={{type="fluid", name="hydrogen", amount=4}},
    subgroup = "fluid-recipes",
    order = "c-f-b"
  },{
    enabled = false,
    type = "recipe",
    name = "liquid-oxygen",
    category = "chemistry",
    energy_required = 5,
    ingredients = {
    },
    results={{type="fluid", name="liquid-oxygen", amount=1}},
    subgroup = "fluid-recipes",
    order = "c-g"
  },{
    enabled = false,
    type = "recipe",
    name = "fertilizer",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="ammonia", amount=1}
    },
    result="fertilizer",
    result_count = 1
  },{
    enabled = false,
    type = "recipe",
    name = "ANFO",
    category = "chemistry",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="ammonium-nitrate", amount=2},
      {type="fluid", name="light-oil", amount=0.1}
    },
    result="explosives"
  },{
    enabled = false,
    type = "recipe",
    name = "TNT",
    category = "chemistry",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nitric-acid", amount=1},
      {type="fluid", name="sulfuric-acid", amount=1}
    },
    result="advanced-explosives"
  },{
    enabled = false,
    type = "recipe",
    name = "rocket-fuel-2",
    category = "chemistry",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nitric-acid", amount=20},
      {type="fluid", name="liquid-hydrogen", amount=10}
    },
    result="rocket-fuel"
  },{
    enabled = false,
    type = "recipe",
    name = "rocket-fuel-3",
    category = "chemistry",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="liquid-oxygen", amount=10},
      {type="fluid", name="light-oil", amount=20}
    },
    result="rocket-fuel"
  },{
    enabled = false,
    type = "recipe",
    name = "rocket-fuel-4",
    category = "chemistry",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="liquid-oxygen", amount=10},
      {type="fluid", name="liquid-hydrogen", amount=10}
    },
    result="rocket-fuel"
  }
})
