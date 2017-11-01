for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes

  if technologies["nuclear-reactor"].researched then
    recipes["nucular-reactor"].enabled = true
  end

  if technologies["steam-turbine"].researched then
    recipes["nucular-steam-turbine"].enabled = true
  end
end