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
Tower //tower definition diff
{
  pool xp                  //towers have experience
  gainXP: killCreep --> xp //gained by killing creeps
  pool range at 150 add (5 * xp)        //add xp bonus
  pool firePower at 50 add (2 * xp)     //add xp bonus
  pool rotationSpeed at 20 add (2 * xp) //add xp bonus
}

modify //evaluating this modification changes the game

