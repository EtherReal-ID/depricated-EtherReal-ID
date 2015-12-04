import "_std.sol";
import "etherreal.sol";
import "etherreal_id.sol";

/* etherreal identity registry */
contract etherrealIdStorage is etherreal, etherrealOwner, etherrealKiller {
  
  etherrealId[] registry;
  
  /* Init the registry with size 0 (empty) */
  function etherrealIdStorage() {
    registry.length = 0;
  }
  
  /* Register an identity */
  function register(bytes first, bytes last, bytes nick, address[] subs) {
    etherrealId id = new etherrealId(first, last, nick, subs);
    uint current = registry.length;
    registry.length += 1;
    registry[current] = id;
  }
}

/* @TODO: Sortition */

// This is a process for sorting
// through the list of user keys
// and returning x number
// of adresses 
