public class KSUOmbudsFormController 
{    
    // check if ContactId is passed in the URL, if not return null
    public static Contact getContact() 
    {    
        if ( System.currentPageReference().getParameters().get('contactUrlId') != null )
        {
            String contactId = System.currentPageReference().getParameters().get('contactUrlId');
            return [SELECT Email, FirstName, LastName FROM Contact WHERE id =: contactId];
        } else {
            return null;
        }
    }
}
