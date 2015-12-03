import "std.sol";
import "etherreal.sol";

/* Etherreal identity contract */
contract EtherrealId is Etherreal, EtherrealOwner, EtherrealKiller {
  
  /* Identity data */
  struct Id {
    bytes     nameFirst;
    bytes     nameLast;
    bytes     nameNick;
    address   keyMain;
    address[] keySubs;
    uint      score;
  }
  
  Id id;
  
  /* init an Etherreal ID */
  function EtherrealId(bytes first, bytes last, bytes nick, address[] subs) {
    this.create(first, last, nick, subs);
  }
  
  /* create an Etherreal ID */
  function create(bytes first, bytes last, bytes nick, address[] subs) {
    id.nameFirst = first;
    id.nameLast = last;
    id.nameNick = nick;
    id.keyMain = msg.sender;
    id.keySubs = subs;
    id.score = 0;
  }
  
  /* set the id score */
  function setScore(uint scr) {
    bool allowed = true; // @TODO everyone is allowed ?
    if (allowed && scr > 0) {
      id.score += scr;
    }
  }
}