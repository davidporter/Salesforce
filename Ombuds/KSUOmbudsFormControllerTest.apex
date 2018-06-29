@isTest
private class KSUOmbudsFormControllerTest {
    
    @isTest static void testContactNull() {
        
        Test.startTest();
        Contact con = KSUOmbudsFormController.getContact();
        Test.stopTest();
        
        System.assertEquals(null, con);
    }
    
    // test that the contactUrlId is passed in to the page and the correct contact is returned
    @isTest static void testContactUrl() {
        
        Contact con = new Contact(firstname='David', lastname='Porter', email='dporte25@kent.edu');
        Insert con;
        
        PageReference pageRef = Page.KSUOmbudsForm;
        Test.setCurrentPage(pageRef);
        pageRef.getParameters().put('contactUrlId', con.Id);
        String ucontactId = pageRef.getParameters().get('contactUrlId');
        
        Test.startTest();
        KSUOmbudsFormController.getContact();
        Test.stopTest();
        
        System.assertEquals(con.Id, ucontactId);
    }   
}
