//problem: players can only buy health
//objective: provide players with a choice (tradeoff)
//decision: add a shield that reduces damage
//          and the ability to upgrade the shield
Player
{
  pool shield at 50 //add a shield that starts at 50%
  //modify the way damage is dealt
  damageHealth: hp -damageAmount*((100-shield)/100)-> damage
  //damage the shield every time the player is damaged
  damageShield: shield -damageAmount/2-> damage
  //add a user control to upgrade the shield
  user converter buyShield           //upgrade control
  costShield: gold -20-> buyShield   //cost of an upgrade
  gainShield: buyShield -20-> shield //benefit
}
modify
