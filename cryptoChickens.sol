contract CryptoChickens {
  // DECLARING BASIC VARIABLES, TOKEN SYMBOLS, AND CONSTANTS
  // Public variables of the token
  string public name;
  string public symbol;
  // Total chickens "released" into the market
  uint256 public chickensCreated;

  event ChickenFightOutcome(uint256 chickenId);

  // contstruct the array struct
  struct Chicken {
  // uint64 birthTime;
  // uint64 cooldownEndBlock;
  uint64 attack_power;
  uint64 defense_power;
  }

  struct Armor {
    uint64
  }

  Armor[] armors;
  Chicken[] chickens;

  mapping (uint256 => address) public chickenIndexToOwner;


  function createChicken(uint64 _attack_power, uint64 _defense_power) public returns(uint) {
      Chicken memory _chicken = Chicken({attack_power: _attack_power, defense_power: _defense_power});
      uint256 newChickenId = chickens.push(_chicken) - 1;
      chickensCreated++;
  }

  function getChicken(uint256 _id) external view returns(uint64 attack_power, uint64 defense_power) {
    Chicken storage chicken = chickens[_id];
    attack_power = uint64(chicken.attack_power);
    defense_power = uint64(chicken.defense_power);
  }



  function chickenFight(uint256 _chicken_one, uint256 _chicken_two) public returns(bool) {
    uint256 _chicken_winner = _determineChickenFightOutcome(_chicken_one, _chicken_two);
    ChickenFightOutcome(_chicken_winner);
  }

  function _determineChickenFightOutcome(uint256 _chicken_one, uint256 _chicken_two) internal returns(uint) {
    Chicken storage chicken_one = chickens[_chicken_one];
    Chicken storage chicken_two = chickens[_chicken_two];
    uint chicken_one_attack = chicken_one.attack_power;
    // uint chicken_one_defense = chicken_one.defense_power
    uint chicken_two_attack = chicken_two.attack_power;
    // uint chicken_two_defenese = chicken_two.defense_power
    if(chicken_one_attack > chicken_two_attack) {
      return _chicken_one;
    } else {
      return _chicken_two;
    }
  }








}
