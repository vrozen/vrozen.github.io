Drone
{
  pool self at 1
  pool speed at 550 //Multiplied by 100
  pool scoreIncrease at 50
   //health
  extern pool damageAmount //calculate and set damage
  inout pool hp at 25
  inout pool maxHP at 25
  inout drain damage  
  damageHealth: hp -damageAmount-> damage

  drain kill               //fighters can be killed
  out ref gold
  source goldify     //gold can come out
  
  //auto source tryKill
  //doKill: tryKill .*.> kill
  doKill: damage .*.> kill         //attempt to kill a drone when damage is taken (trigger)
  canKill: hp . hp <= 0 .> kill //that only works if health is zero
  killDrone: self --> kill              //in that case we remove the resource from self killing the drone
  
  //auto source tryGoldify
  //doGoldify: tryGoldify .*.> goldify
  doGoldify: damage .*.> goldify         //attempt to  goldify a drone (trigger)
  canGoldify: hp . hp <= 0 .> goldify //which only works when health is zero
  giveGold: goldify -100-> gold
}

ShooterDrone
{
  pool self at 1
  pool speed at 300 //Multiplied by 100
  pool shootingRate at 250 //Multiplied by 100
  pool scoreIncrease at 100
  pool dashAttackRange at 3
  pool dashBoostRange at 500 //Multiplied by 100
  pool dashTime at 100 //Multiplied by 100
   //health
  extern pool damageAmount //calculate and set damage
  inout pool hp at 40
  inout pool maxHP at 40
  inout drain damage  
  damageHealth: hp -damageAmount-> damage

  drain kill               //fighters can be killed
  out ref gold
  source goldify     //gold can come out
  
  //auto source tryKill
  //doKill: tryKill .*.> kill
  doKill: damage .*.> kill         //attempt to kill a drone when damage is taken (trigger)
  canKill: hp . hp <= 0 .> kill //that only works if health is zero
  killDrone: self --> kill              //in that case we remove the resource from self killing the drone
  
  //auto source tryGoldify
  //doGoldify: tryGoldify .*.> goldify
  doGoldify: damage .*.> goldify         //attempt to  goldify a drone (trigger)
  canGoldify: hp . hp <= 0 .> goldify //which only works when health is zero
  giveGold: goldify -100-> gold
}

SeekerDrone
{
  pool self at 1
  pool speed at 325 //Multiplied by 100
  pool attackRadius at 500 //Multiplied by 100
  pool scoreIncrease at 150
   //health
  extern pool damageAmount //calculate and set damage
  inout pool hp at 75
  inout pool maxHP at 75
  inout drain damage  
  damageHealth: hp -damageAmount-> damage

  drain kill               //fighters can be killed
  out ref gold
  source goldify     //gold can come out
  
  //auto source tryKill
  //doKill: tryKill .*.> kill
  doKill: damage .*.> kill         //attempt to kill a drone when damage is taken (trigger)
  canKill: hp . hp <= 0 .> kill //that only works if health is zero
  killDrone: self --> kill              //in that case we remove the resource from self killing the drone
  
  //auto source tryGoldify
  //doGoldify: tryGoldify .*.> goldify
  doGoldify: damage .*.> goldify         //attempt to  goldify a drone (trigger)
  canGoldify: hp . hp <= 0 .> goldify //which only works when health is zero
  giveGold: goldify -150-> gold
}

FighterDrone
{
  pool self at 1
  pool speed at 400 //Multiplied by 100
  pool shootingRate at 100 //Multiplied by 100
  pool scoreIncrease at 200
  pool returnSpeedX at 750 //Multiplied by 100
   //health
  extern pool damageAmount //calculate and set damage
  inout pool hp at 50
  inout pool maxHP at 50
  inout drain damage
  damageHealth: hp -damageAmount-> damage

  drain kill               //fighters can be killed
  out ref gold
  source goldify     //gold can come out
  
  //auto source tryKill
  //doKill: tryKill .*.> kill
  doKill: damage .*.> kill         //attempt to kill a drone when damage is taken (trigger)
  canKill: hp . hp <= 0 .> kill //that only works if health is zero
  killDrone: self --> kill              //in that case we remove the resource from self killing the drone
  
  //auto source tryGoldify
  //doGoldify: tryGoldify .*.> goldify
  doGoldify: damage .*.> goldify         //attempt to  goldify a drone (trigger)
  canGoldify: hp . hp <= 0 .> goldify //which only works when health is zero
  giveGold: goldify -150-> gold
}

GattlingDrone
{
  pool self at 1
  pool speed at 3
  pool shootingRate at 15 //Multiplied by 100
  pool scoreIncrease at 200
  pool flyAwaySpeed at 300 //Multiplied by 100
  pool shootingTime at 100 //Multiplied by 100
   //health
  extern pool damageAmount //calculate and set damage
  inout pool hp at 60
  inout pool maxHP at 60
  inout drain damage  
  damageHealth: hp -damageAmount-> damage

  drain kill               //fighters can be killed
  out ref gold
  source goldify     //gold can come out
  
  //auto source tryKill
  //doKill: tryKill .*.> kill
  doKill: damage .*.> kill         //attempt to kill a drone when damage is taken (trigger)
  canKill: hp . hp <= 0 .> kill //that only works if health is zero
  killDrone: self --> kill              //in that case we remove the resource from self killing the drone
  
  //auto source tryGoldify
  //doGoldify: tryGoldify .*.> goldify
  doGoldify: damage .*.> goldify         //attempt to  goldify a drone (trigger)
  canGoldify: hp . hp <= 0 .> goldify //which only works when health is zero
  giveGold: goldify -200-> gold
}

MinerDrone
{
  pool self at 1
  pool speed at 300 //Multiplied by 100
  pool shootingRate at 180 //Multiplied by 100
  pool scoreIncrease at 200
  //health
  extern pool damageAmount //calculate and set damage
  inout pool hp at 100
  inout pool maxHP at 100
  inout drain damage  
  damageHealth: hp -damageAmount-> damage

  drain kill               //fighters can be killed
  out ref gold
  source goldify     //gold can come out
  
  //auto source tryKill
  //doKill: tryKill .*.> kill
  doKill: damage .*.> kill         //attempt to kill a drone when damage is taken (trigger)
  canKill: hp . hp <= 0 .> kill //that only works if health is zero
  killDrone: self --> kill              //in that case we remove the resource from self killing the drone
  
  //auto source tryGoldify
  //doGoldify: tryGoldify .*.> goldify
  doGoldify: damage .*.> goldify         //attempt to  goldify a drone (trigger)
  canGoldify: hp . hp <= 0 .> goldify //which only works when health is zero
  giveGold: goldify -200-> gold
}

Player
{
  pool self at 1   //self represents this instance
  pool speed at 750 //Multiplied by 100
  pool weaponLevel at 1 max 7
  inout pool hp at 200
  inout pool maxHP at 200  
  extern pool damageAmount //calculate and set damage
  inout drain damage
  damageHealth: hp -damageAmount-> damage

  //where is the player? activate these nodes from the game to tell the diagram where the player is
  inout user pool top //player is at the top of the screen
  inout user pool mid at 1 //player is in the middle of the screen
  inout user pool btm //player is at the bottom of the screen

  //the movements the player can make
  topToMid: top --> mid
  midToTop: mid --> top
  midToBtm: mid --> btm
  btmToMid: btm --> mid
  
  
  //shield reduces damage, in percentage, ex. 75 shield results in 25% of original damage
  //drain shieldDestruction //shield gets weaker each hit
  //activateDamageShield: damage .*.>  shieldDestruction
  //damageShield: shield -5-> shieldDestruction
}

Spawner
{
  //instances of these enemies go into the enemies queue

  user source tick
  extern pool waitingRoom

  user drain spawnFail

  user source spawnTopRight
  user source spawnMidRight
  user source spawnBtmRight
  
  pool escaped
  pool defeated

  //bound player info
  inout ref hp
  inout ref maxHP
  inout ref top
  inout ref mid
  inout ref btm

  //bound drones
  inout ref drones
  inout ref shooterDrones
  inout ref seekerDrones
  inout ref fighterDrones
  inout ref gattlingDrones
  inout ref minerDrones

  pool alive
  
  //spawned enemies before they are instantiated
  push pool medium
  push pool small
  push pool large
  push pool anyKind //spawn any kind  
  
  //getMedium: spawnMedium --> medium
  //getSmall:  spawnSmall --> small
  //getLarge:  spawnLarge --> large
  //getAny:    spawnAny --> anyKind

  source spawnSmall
  source spawnMedium
  source spawnLarge
  source spawnAny
  
  getAnyOne: spawnAny --> anyKind
  
  activateSmall:  tick .*.> spawnSmall
  activateMedium: tick .*.> spawnMedium
  activateLarge:  tick .*.> spawnLarge
  activateAny:    tick .*.> spawnAny
  
  //push resources to actual instance pools
  pushSmall:  tick .*.> small
  pushMedium: tick .*.> medium
  pushLarge:  tick .*.> large
  pushAny: tick .*.> anyKind
  
  //choose a random kind
  rndSmall:  anyKind --> small
  rndMedium: anyKind --> medium
  rndLarge:  anyKind --> large

  spawnSmallEnemy: spawnSmall --> small
  spawnMediumEnemy: spawnMedium --> medium
  spawnLargeEnemy: spawnLarge --> large

  cond10: hp . hp / maxHP > 0.75 .> spawnAny
  cond21: hp . hp / maxHP > 0.50 .> spawnLarge
  cond22: hp . hp / maxHP <= 0.75 .> spawnLarge
  cond31: hp . hp / maxHP > 0.25 .> spawnMedium
  cond32: hp . hp / maxHP <= 0.50 .> spawnMedium
  cond41: hp . hp / maxHP > 0  .> spawnSmall
  cond42: hp . hp / maxHP <= 0.25 .> spawnSmall

  getDrones:         small --> drones
  getShooterDrones:  small --> shooterDrones
  getSeekerDrones:   medium --> seekerDrones
  getFighterDrones:  medium --> fighterDrones
  getGattlingDrones: large --> gattlingDrones
  getMinerDrones:    large --> minerDrones
  
  spawn1: tick .*.> spawnTopRight 
  spawn2: tick .*.> spawnMidRight
  spawn3: tick .*.> spawnBtmRight

  playerAtTop: top .top==1.> spawnTopRight 
  playerAtMid: mid .mid==1.> spawnMidRight
  playerAtBtm: btm .btm==1.> spawnBtmRight
  
  haveEnemy1: waitingRoom .waitingRoom !=0.> spawnTopRight
  haveEnemy2: waitingRoom .waitingRoom !=0.> spawnMidRight
  haveEnemy3: waitingRoom .waitingRoom !=0.> spawnBtmRight

  spawnEnemyTop: spawnTopRight --> alive
  spawnEnemyMid: spawnMidRight --> alive
  spawnEnemyBtm: spawnBtmRight --> alive
}

pool drones of Drone
pool shooterDrones of ShooterDrone
pool seekerDrones of SeekerDrone
pool fighterDrones of FighterDrone
pool gattlingDrones of GattlingDrone
pool minerDrones of MinerDrone
pool gold
Player player
Spawner spawner

//ref gold //define an alias gold
//aliasGold: player.gold .=.> gold //bind player gold to that alias
//goldFromFighter: fighterDrones.goldifier -24-> gold //gain 24 gold when a fighter drone dies

bindDrones:         drones         .=.> spawner.drones
bindShooterDrones:  shooterDrones  .=.> spawner.shooterDrones
bindSeekerDrones:   seekerDrones   .=.> spawner.seekerDrones
bindFighterDrones:  fighterDrones  .=.> spawner.fighterDrones
bindGattlingDrones: gattlingDrones .=.> spawner.gattlingDrones
bindMinerDrones:    minerDrones    .=.> spawner.minerDrones

bindHp:  player.hp  .=.> spawner.hp
bindMaxHP:  player.maxHP  .=.> spawner.maxHP
bindTop: player.top .=.> spawner.top
bindMid: player.mid .=.> spawner.mid
bindBtm: player.btm .=.> spawner.btm

modify

Player
{
    //currency introduced for upgrades
  in ref gold         //amount of gold the player has, displayed by the game

  //an upgrade
 // user converter upgradeShield //user control for upgrading shield
 // costUpgradeShield: gold -10-> upgradeShield  //cost of a shield upgrade
 // conditionUpgradeShield: shield . shield <= 95 .> upgradeShield //Don't let shield percentage get over 100%
 // gainUpgradeShield: upgradeShield -5-> shield //amount of shield gained
   
  //another upgrade
//  user converter buyMedkit //user buys back some health
//  costBuyMedkit: gold -10-> buyMedkit  //cost of a medkit
//  gainBuyMedkit: buyMedkit -5-> hp //gain health
  
  //and another upgrade
//  user converter increaseMaxHealth //user buys max health
//  costBuyHealth: gold -20-> increaseMaxHealth      //cost maxHealth increase
//  gainBuyHealth: increaseMaxHealth -10-> maxHP //gain maxHealth

//  user converter increaseWeaponLevel
//  costWeaponLevelIncrease: gold -100 * weaponLevel-> increaseWeaponLevel
//  conditionWeaponLevelIncrease: weaponLevel . weaponLevel < 7 .> increaseWeaponLevel
//  gainWeaponLevelIncrease: increaseWeaponLevel --> weaponLevel
}

bindGoldPlayer: gold .=.> player.gold
bindDroneGold: gold .=.> drones.gold
bindShooterDroneGold: gold .=.> shooterDrones.gold
bindSeekerDroneGold: gold .=.> seekerDrones.gold
bindFighterDroneGold: gold .=.> fighterDrones.gold
bindGattlingDroneGold: gold .=.> gattlingDrones.gold
bindMinerDroneGold: gold .=.> minerDrones.gold

modify
