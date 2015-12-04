import "_std.sol";

/* vouchsafe stub */
contract vouchsafe is abstract {}

/* Generic contract to set owner */
contract vouchsafeOwner is owned, vouchsafe {
  address owner;
  function vouchsafeOwner() {
    
    /* contract owner is initial message sender */
    owner = msg.sender;
  }
  modifier onlyowner() {
    
    /* update new owner only by owner */
    if (msg.sender == owner) _
  }
}

/* Generic contract to allow contract destruction */
contract vouchsafeKiller is mortal, vouchsafe, vouchsafeOwner {
  address killer;
  function vouchsafeKiller() {
    
    /* verify only owner can kill contracts */
    killer = msg.sender;
    if (killer == owner) {
      suicide(killer);
    }
  }
}
