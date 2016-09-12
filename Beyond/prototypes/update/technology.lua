table.insert(data.raw.technology["battery-mk2-equipment"].prerequisites,"battery-2")

table.insert(data.raw.technology["fusion-reactor-equipment"].prerequisites,"fusion-reactor")

data.raw.technology["fusion-reactor-equipment"].unit =
    {
      count = 200,
      ingredients = {
      {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    }

data.raw.technology["power-armor-2"].unit =
    {
      count = 300,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-3", 1},
        {"science-pack-4", 1}
      },
      time = 60
    }    
    
data.raw.technology["rocket-silo"].prerequisites = {"rocketry", "advanced-electronics-2"}

data.raw.technology["rocket-silo"].unit =
    {
      count = 300,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    }    


data.raw.technology["solar-energy"].prerequisites = {"electronics", "glass"}
data.raw.technology["solar-energy"].unit =
    {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }

    
data.raw.technology["advanced-electronics"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-circuit"
      }
    }
    


data.raw.technology["advanced-electronics-2"].unit =
    {
      count = 100,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    }
data.raw.technology["advanced-electronics-2"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "processing-unit"
      },
      {
        type = "unlock-recipe",
        recipe = "microprocessor"
      },
      {
        type = "unlock-recipe",
        recipe = "silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "silicon-wafer"
      }
    }
