//What would you like to modify?

Tower
{
  out ref gold
  user source sell
  drain sacrifice
  triggerSacrifice: sell .*.> sacrifice
  sacrificeSelf:  self -self-> sacrifice
  getGold4Self2:  sell -20-> gold
}

towerGold: gold .=.> towers.gold

modify //evaluating this modification changes the game
