
data:extend({
 {
    enabled = false,
    type = "recipe",
    name = "rocket-landing-pad",
    ingredients = {
      {"steel-plate", 10},
      {"concrete", 10}
    },
    result="rocket-landing-pad"
  }, {
    type = "recipe",
    name = "titanium",
    category = "smelting",
    enabled = false,
    energy_required = 17.5,
    ingredients = {{"titanium-ore", 1}},
    result = "titanium"
  }, {
    type = "recipe",
    name = "titanium-gear-wheel",
    enabled = false,
    energy_required = 5,
    ingredients = {{"titanium", 1}},
    result_count = 1,
    result = "titanium-gear-wheel"
  }, {
    enabled = false,
    type = "recipe",
    name = "nuclear-fusion",
    category = "fusion",
    subgroup = "nuclear-reactor",
    energy_required = 10,
    ingredients = {
      {type="fluid", name="water", amount= 2400},
      {type="item", name="tritium", amount=1}
    },
    results=
    {
      {type="fluid", name="hot-steam", amount= 2400, temperature=250}
    }
  },
  {
    icon = "__Beyond__/graphics/icons/tritium.png",
    enabled = false,
    type = "recipe",
    name = "tritium",
    category = "nuclear",
    subgroup = "nuclear-reactor",
    energy_required = 10,
    ingredients = {
      {type="item", name="nuclear-fuel", amount=1},
      {type="item", name="lithium", amount=1}
    },
    results=
    {
      {type="item", name="spent-nuclear-fuel", amount=1},
      {type="item", name="tritium", amount=1}
    }
  },
  {
    name = "advanced-farm",
    enabled = false,
    type = "recipe",
    category = "farm",
    energy_required = 10,
    ingredients = {
      {type="fluid", name="water", amount=60},
      {type="item", name="fertilizer", amount=1}
    },
    result_count = 6,
    result = "raw-wood"
  },
  {
    name = "basic-farm",
    enabled = false,
    type = "recipe",
    category = "farm",
    energy_required = 10,
    ingredients = {
      {type="fluid", name="water", amount=60}
    },
    result = "raw-wood",
    result_count = 2
  },
  {
    name = "wood-pulp",
    enabled = false,
    type = "recipe",
    energy_required = 2,
    ingredients = {
      {type="item", name="raw-wood", amount=4}
    },
    result = "wood-pulp",
    result_count = 1
  },
  {
    name = "bioplastic",
    enabled = false,
    type = "recipe",
    energy_required = 2,
    category = "chemistry",
    ingredients = {
      {type="item", name="wood-pulp", amount=2},
      {type="fluid", name="sulfuric-acid", amount=0.2}
    },
    result = "plastic-bar",
    result_count = 1
  },
  {
    name = "wood-gas",
    enabled = false,
    type = "recipe",
    energy_required = 2,
    category = "chemistry",
    ingredients = {
      {type="item", name="wood-pulp", amount=1},
    },
    results={{type="fluid", name="hydrogen", amount=2}}
  }, {
    type = "recipe",
    name = "asteroid-mining",
    energy_required = 1,
    enabled = false,
    category = "rocket-building",
    ingredients =
    {
      {"asteroid-mining-drill", 1},
    },
    result_count = 400,
    result= "titanium-ore"
  },
  {
    name = "plastic-pallet",
    enabled = false,
    type = "recipe",
    energy_required = 1,
    ingredients = {
      {type="item", name="plastic-bar", amount=1}
    },
    result = "pallet",
    result_count = 1
  },
  {
    name = "wood-pallet",
    enabled = false,
    type = "recipe",
    energy_required = 1,
    ingredients = {
      {type="item", name="raw-wood", amount=8}
    },
    result = "pallet",
    result_count = 1
  },
  {
    name = "plastic-packaging",
    enabled = false,
    type = "recipe",
    energy_required = 1,
    ingredients = {
      {type="item", name="plastic-bar", amount=1}
    },
    result = "packaging",
    result_count = 2
  },
  {
    name = "carton-packaging",
    enabled = false,
    type = "recipe",
    energy_required = 1,
    ingredients = {
      {type="item", name="wood-pulp", amount=1}
    },
    result = "packaging",
    result_count = 1
  },
  {
    type = "recipe",
    name = "flying-robot-frame-2",
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 2},
      {"lithium-ion-battery", 4},
      {"titanium", 4},
      {"processing-unit", 2}
    },
    result = "flying-robot-frame-2",
    enabled = false
  }, {
    type = "recipe",
    name = "glass",
    category = "smelting",
    enabled = false,
    energy_required = 7,
    ingredients = {{"silicon-ore", 1}},
    result = "glass"
  },
})
