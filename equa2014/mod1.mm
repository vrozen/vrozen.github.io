//problem: players quickly run out of health (hp)
//objective: give players a way to regain health (hp)
//decision: provide players with the ability
//          to buy back a portion of health using gold
Player
{
  //add a user control for buying hp
  user converter buyMedKit  
  //cost of a medkit
  costMedKit: gold -100-> buyMedKit
  //benefit of a medkit
  gainHealth: buyMedKit -50-> hp
}
modify
