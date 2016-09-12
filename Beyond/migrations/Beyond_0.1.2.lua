for i, force in pairs(game.forces) do 
 force.reset_recipes()
 force.reset_technologies()
 force.recipes["basic-farm"].enabled = true
 force.recipes["advanced-farm"].enabled = true
end
