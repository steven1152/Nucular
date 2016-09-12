data:extend(
{

  {
    type = "technology",
    name = "agriculture",
    icon_size = 256,
    icon = "__Beyond__/graphics/technology/agriculture.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "farm"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "advanced-farm"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a",
  },
  
  {
    type = "technology",
    name = "agriculture-2",
    icon_size = 256,
    icon = "__Beyond__/graphics/technology/agriculture.png",
    prerequisites = {"agriculture"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wood-pulp"
      }
    },
    unit =
    {
      count = 150,
      ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}},
      time = 30
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "packaging",
    icon_size = 256,
    icon = "__Beyond__/graphics/technology/packaging.png",
    prerequisites = {"logistics-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "plastic-packaging"
      },
      {
        type = "unlock-recipe",
        recipe = "plastic-pallet"
      },
      {
        type = "unlock-recipe",
        recipe = "wood-pallet"
      },
      {
        type = "unlock-recipe",
        recipe = "carton-packaging"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-h-a",
  },
  
  {
    type = "technology",
    name = "advanced-chemicals",
    icon_size = 256,
    icon = "__Beyond__/graphics/technology/advanced-chemicals.png",
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ammonia"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-reforming"
      },
      {
        type = "unlock-recipe",
        recipe = "fertilizer"
      }
    },
    unit =
    {
      count = 150,
      ingredients = {
      {"science-pack-1", 1},
      {"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-h-a",
  },
  
  {
    type = "technology",
    name = "advanced-chemicals-2",
    icon_size = 256,
    icon = "__Beyond__/graphics/technology/advanced-chemicals.png",
    prerequisites = {"advanced-chemicals","agriculture-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wood-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "bioplastic"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-h-a",
  },
  
  {
    type = "technology",
    name = "explosives-2",
    icon = "__base__/graphics/technology/explosives.png",
    prerequisites = {"advanced-chemicals","explosives"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nitric-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "ammonium-nitrate"
      },
      {
        type = "unlock-recipe",
        recipe = "ANFO"
      },
      {
        type = "unlock-recipe",
        recipe = "TNT"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-h-a",
  },
  
  {
    type = "technology",
    name = "cryogenics",
    icon_size = 256,
    icon = "__Beyond__/graphics/technology/rocket-fuel.png",
    prerequisites = {"advanced-chemicals","rocket-silo"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-oxygen"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel-3"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel-4"
      }
    }, 
    unit =
    {
      count = 300,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    },
    order = "a-h-a",
  },
  
  {
    type = "technology",
    name = "battery-2",
    icon = "__base__/graphics/technology/battery.png",
    prerequisites = {"battery"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lithium"
      },{
        type = "unlock-recipe",
        recipe = "lithium-ion-battery"
      },{
        type = "unlock-recipe",
        recipe = "lithium-ion-accumulator"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "f-nuc-g"
  },
  {
    type = "technology",
    name = "asteroid-mining",
    icon = "__Beyond__/graphics/technology/titanium-processing.png",
    icon_size = 128,
    prerequisites = {"rocket-silo"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "asteroid-mining"
      },
      {
        type = "unlock-recipe",
        recipe = "titanium"
      },
      {
        type = "unlock-recipe",
        recipe = "asteroid-mining-drill"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-landing-pad"
      },
      {
        type = "unlock-recipe",
        recipe = "titanium-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "science-pack-4"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    order = "f-nuc-h"
  },
  {
    type = "technology",
    name = "superconducting-magnet",
    icon = "__Beyond__/graphics/technology/superconducting-magnet.png",
    icon_size = 128,
    prerequisites = {"asteroid-mining"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "superconducting-magnet"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    },
    order = "f-nuc-i"
  },
  {
    type = "technology",
    name = "fusion-reactor",
    icon = "__Beyond__/graphics/technology/fusion-reactor.png",
    icon_size = 128,
    prerequisites = {"advanced-electronics-3","particle-physics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-fusion"
      },
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "tritium"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    },
    order = "f-nuc-j"
  },
  {
    type = "technology",
    name = "maglev",
    icon = "__Beyond__/graphics/technology/maglev.png",
    icon_size = 128,
    prerequisites = {"superconducting-magnet"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "maglev-locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "maglev-cargo-wagon"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    },
    order = "f-nuc-j"
  },
  {
    type = "technology",
    name = "railgun",
    icon = "__Beyond__/graphics/technology/railgun.png",
    icon_size = 128,
    prerequisites = {"superconducting-magnet"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gauss-rifle"
      },
      {
        type = "unlock-recipe",
        recipe = "gauss-rifle-ammo"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    },
    order = "f-nuc-j"
  },
  {
    type = "technology",
    name = "automation-4",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-4"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-2"
      },
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-2"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-2"
      }
    },
    prerequisites = {"speed-module-3", "automation-3"},
    unit =
    {
      count = 200,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    },
    order = "a-b-c"
  },
  {
    type = "technology",
    name = "glass",
    icon_size = 128,
    icon = "__Beyond__/graphics/technology/glass.png",
    prerequisites = {"steel-processing","optics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "glass"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}},
      time = 30
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "solar-energy-2",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-2"
      }
    },
    prerequisites = {"solar-energy","advanced-electronics-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-h-c",
  },
  {
    type = "technology",
    name = "advanced-electronics-3",
    icon_size = 128,
    icon = "__Beyond__/graphics/technology/advanced-electronics-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "quantum-microprocessor"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-microprocessor"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-microprocessor"
      }
    },
    prerequisites = {"superconducting-magnet"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 45
    },
    order = "a-h-c",
  }
})
