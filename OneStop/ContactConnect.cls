Case c = new Case(Subject='Test Trigger', SuppliedEmail='dporte25@kent.edu');
Case d = new Case(Subject='Test Trigger', SuppliedEmail='dporte505@kent.edu');
insert c;
insert d;
    
    
// create a list to hold emails from cases
List<String> sEmails = new List<String>();

Case[] cases = new Case[]{c,d};
    
system.debug('! ! ! ! ! ! !  !!  ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !  !!  !! ! ! !! ! !! ! ! ! !! ! ! !! ! ! !! ! ! ! ! ! ! !! ! ! ! !! ! ! ! CZ ');
    
for (Case cz : cases) {
	// add each email from the Case list into the sEmail String list
    sEmails.add(cz.SuppliedEmail);
}

// get each contact with a supplied email on inserted case(s)
List<Contact> Contacts = new List<Contact>();

//System.debug( +[select Id, Email from Contact where Email in sEmails]+ );

for (String eml : sEmails) {
    System.debug('email!!!!!!!!!!!!!!!! ' + eml);
    string evl = eml;
    
    //Contact seml = [select Id, Email from Contact where Email = \':eml\'];
    //Contacts.add (seml);
}



// Iterate through this list and remove SuppliedEmail(s) to match on contact(s)

    // Get All Cases
    List<Case> cas = [select Id, SuppliedEmail from Case];
    for (Case cs : cas) { System.debug( cs ); }
    

    
    
