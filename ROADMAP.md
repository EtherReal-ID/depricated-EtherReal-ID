#Road Map
In priority order (feel free to reorder.)


###etherre.al registration
- [x] **ID creation** Contract that lets any user register their keys in the ID registry, 
  - [x] **registry** -> users keys maped to their name, nick name, address etc <- this is the public record part of the system
  - [x] **sub registry** -> user may have any other keys that they wish to asociate with their "Real" ID  this sub regestry tracks these sock pupets with Real-IDs <- this is searchable but all the serch shoud reveal is a zero knowledge froof that the key is "owned" by a Real ID
- [ ] **Sortition** -> search through regestry and creat geographical groups, return x random

###etherre.al engine
- [ ] **Reality Cheque** users Real-IDs have are ranked by checking their "ballance" or ID tokens.
- [ ] **bean Counter**  when a user verifes another user they "swap" tokens.  If the tokens a user holds turn bad that reflects bably on the them. 
- [ ] **witch Finder**  when an ID is flagged as non human by a "witness" they become a "witch finder" 
  - [ ] ** If the suspect ID turns out to be a REAL person then the "witch finder" gets punished (their ID is suspect)
  - [ ] **poisening the well** If the suspect ID turns out to be a FAKE then all the tokes that originated with teh fake ID become bad and damage the IDs of their holders.
  - [ ] Sort these ID contracts into geographicl groups
  
###VouchSafe					
- [ ] Information is accessed by ring signature -> https://en.wikipedia.org/wiki/Ring_signature
- [ ] verification system key signing
- [ ] reporting, mechanism
- [ ] add transaction with evaluation - any TX on the blockchain can be referenced and evaluated as long as the user has taken part in it
- [x] Multi-Sig-Wallet with daily limits

###Watchman 
- [ ]
	
####App / HTML / Wisper / Whatever stuf that can be kept off the block 
- [ ] **OpenID** allow users to register with an OAuth or OpenID account in order to save them the typing of the information
- [ ] **Leverage OpenPGP** If a user has an OpenPGP certificate, import it from https://sks-keyservers.net/i/ and if any signer of her certificate is a member already, then ask her to validate the signature
- [ ] **QR-code handeler** generate QR-Code to avoid typing when validating IDs

#House Keeping#
- [ ] Create the framework consultaiton process on http://dapp.etherre.al <<Does not exist yet 
- [ ] Populate Github issues

####Dont know where to put.
- [ ] sort users by gographical location (and distance they are prepaired to travel.)
- [ ] FoaF (Friend of a friend) network / WoT (Web of Trust) folowing the read write web moddel
(Not a core part of etherre.al but it will speed addoption)





