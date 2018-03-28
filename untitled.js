

class Cock {
  constructor(attack, defense) {
    this.attack = attack;
    this.defense = defense;
  }
}

var cock1 = new Cock(5, 10);
var cock2 = new Cock(3, 4);

class BattleReult {
  constructor(cock1, cock2, winner) {
    this.cock1 = cock1;
    this.cock2 = cock2;
    this.winner = winner;
  }
}


function battle(cock1, cock2){
  var defWinner, atkWinner;

  if (cock1.defense > cock2.defense){
    console.log("cock1 higher defense");
    defWinner = cock1;
    defWinner.toString();
  } else {
    console.log("cock2 higher defense");
    defWinner = cock2;
    defWinner.toString();
  }

  if (cock1.attack > cock2.attack){
    console.log("cock1 higher attack");
    atkWinner = cock1;
    atkWinner.toString();
  } else {
    console.log("cock2 higher attack");
    atkWinner = cock2;
    atkWinner.toString();
  }
  console.log("Defense winner:" + defWinner);
  console.log("Attack winner: " + atkWinner);
}

battle(cock1,cock2);



class Weapon {
  constructor()
}

class Defense {
  constructor()
}
