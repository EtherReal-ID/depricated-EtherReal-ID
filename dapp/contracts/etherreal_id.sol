import "_std.sol";
import "etherreal.sol";

/* etherreal identity contract */
contract etherrealId is etherreal, etherrealOwner, etherrealKiller {
  
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
  
  /* init an etherreal ID */
  function etherrealId(bytes first, bytes last, bytes nick, address[] subs) {
    this.create(first, last, nick, subs);
  }
  
  /* create an etherreal ID */
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