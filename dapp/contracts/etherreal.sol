import "_std.sol";

/* etherreal stub */
contract etherreal is abstract {}

/* Generic contract to set owner */
contract etherrealOwner is owned, etherreal {
  address owner;
  function etherrealOwner() {
    
    /* contract owner is initial message sender */
    owner = msg.sender;
  }
  modifier onlyowner() {
    
    /* update new owner only by owner */
    if (msg.sender == owner) _
  }
}

/* Generic contract to allow contract destruction */
contract etherrealKiller is mortal, etherreal, etherrealOwner {
  address killer;
  function etherrealKiller() {
    
    /* verify only owner can kill contracts */
    killer = msg.sender;
    if (killer == owner) {
      suicide(killer);
    }
  }
}