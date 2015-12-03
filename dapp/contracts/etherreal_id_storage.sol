import "std.sol";
import "etherreal.sol";
import "etherreal_id.sol";

/* Etherreal identity registry */
contract EtherrealIdStorage is Etherreal, EtherrealOwner, EtherrealKiller {
  
  EtherrealId[] registry;
  
  /* Init the registry with size 0 (empty) */
  function EtherrealIdStorage() {
    registry.length = 0;
  }
  
  /* Register an identity */
  function register(bytes first, bytes last, bytes nick, address[] subs) {
    EtherrealId id = new EtherrealId(first, last, nick, subs);
    uint current = registry.length;
    registry.length += 1;
    registry[current] = id;
  }
}