for i, force in pairs(game.forces) do 
 force.reset_recipes()
 force.reset_technologies()
 force.recipes["steam-turbine"].enabled = false
 force.recipes["steam-boiler"].enabled = false
end
