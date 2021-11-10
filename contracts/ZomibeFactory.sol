pragma solidity ^0.8.2;
contract ZombibeFactory {

    event NewZombie(uint zombieId, uint dna);
     struct Zombie {
      string name;
      uint dna;
      uint32 level;
      uint32 readyTime;
    }
    Zombie[] zombies;
    uint public zombieCount;

    function getZombie(uint _id) public view returns (Zombie) {
      return zombies[_id];
    }
    function getZombieCount() public view returns (uint) {
      return zombieCount;
    }

    // create zombie
    function createZombie(string _name, uint _dna, uint _level, uint _readyTime) public {
      Zombie zombie = Zombie(_name, _dna, _level, _readyTime);
      zombies.push(zombie);
      NewZombie(zombies.length - 1, _dna);
    }
    
    // get zombie
    function getZombie(uint _id) public view returns (Zombie) {
      return zombies[_id];
    }
    
    


}
