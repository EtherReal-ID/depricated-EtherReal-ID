import "std.sol";

/* Etherreal stub */
contract Etherreal {}

/* Generic contract to set owner */
contract EtherrealOwner is Etherreal {
  address owner;
  function EtherrealOwner() {
    
    /* contract owner is initial message sender */
    owner = msg.sender;
  }
  modifier onlyowner() {
    
    /* update new owner only by owner */
    if (msg.sender == owner) _
  }
}

/* Generic contract to allow contract destruction */
contract EtherrealKiller is Etherreal, EtherrealOwner {
  address killer;
  function EtherrealKiller() {
    
    /* verify only owner can kill contracts */
    killer = msg.sender;
    if (killer == owner) {
      suicide(killer);
    }
  }
}