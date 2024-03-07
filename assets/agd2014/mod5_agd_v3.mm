//******************************************************************************
// AdapTower is a game created for the publication: "Adapting Game Mechanics
// with Micro-Machinations" by Riemer van Rozen and Joris Dormans,
// which appears in the proceedings of Foundations of Digital Games (FDG) 2014.
//
// These game modifications demonstrate the adaptability of
// game mechanics and gameplay using Micro-Machinations.
//
// Contributors:
//   * Riemer van Rozen - rozen@cwi.nl - HvA / CWI
//******************************************************************************
Tower
{
  pool range at 150        //change: remove xp bonus
  pool firePower at 50     //change: remove xp bonus
  pool rotationSpeed at 20 //change: remove xp bonus  
  
  //adding user upgrades: choices to spend xp
  user converter upgradeRange   //add upgrade tower range
  user converter upgradePower   //add upgrade tower power
  user converter upgradeSpeed   //add upgrade rotation speed

  //upgrading range is increasingly expensive
  buyRange: xp -(10+range/50)-> upgradeRange
  getRange: upgradeRange -50-> range
  //upgrading power is increasinly expensive
  buyPower: xp -(10+firePower/10)-> upgradePower
  getPower: upgradePower -10-> firePower
  //upgrading speped is increasingly expensive
  buySpeed: xp -(10+rotationSpeed/10) -> upgradeSpeed
  getSpeed: upgradeSpeed -10-> rotationSpeed
}

modify //evaluating this modification changes the game

