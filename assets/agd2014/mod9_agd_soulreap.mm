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
  pool soulReaping at 2    //add soul reaping efficiency

  delete tick

  //adding user upgrades: choices to spend xp
  user converter upgradeReaping //add upgrade soul reaping

  //upgrading soul reaping scales linearly
  buyReaping: xp -(soulReaping*10-10)-> upgradeReaping
  getReaping: upgradeReaping -2-> soulReaping

  //nice this same edge is modified twice
  //gaining essence increases with soulReaping efficiency
  getEssence: killCreep -(3+soulReaping)-> essence
}

modify //evaluating this modification changes the game
