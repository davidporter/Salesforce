public with sharing class KSU_Ombuds_Snapshot_Class {

// why is this empty?
public KSU_Ombuds_Snapshot_Class() {

}


public static void getContactSnapshot( List<Case> cas ) {
System.debug('zzz in  getContactSnapshot');
        Case c1 = cas[0];
        Id cId = c1.ContactId;
        System.debug('zzz before cId');
        System.debug(cId );
       
       // get contact values given contactId, create a contact to hold
       Contact con = [SELECT Id, KSU_CumulativeGPA__c, AccountId, KSU_FinancialAid__c, 
                                 KSU_AccountBalance__c, KSU_EnrollmentStatus__c, KSU_StudentType__c,
                                 KSU_CumulativeHours__c, KSU_Level__c, KSU_Current_Academic_Standing__c
                      FROM contact 
                      WHERE Id=:cas[0].ContactId
                      Limit 1];
       
       // create a new instance of the Snapshot object
       KSU_Ombuds_Snapshot__c cs = new KSU_Ombuds_Snapshot__c();
       
       // Associate Contact, Account and Case to Snapshot object
       cs.Name = 'Case Snapshot';
       cs.Account__c = con.accountId;
       cs.Contact__c = con.Id;
       cs.Case__c = cas[0].Id;
       cs.Account_Name__c = con.AccountId;
       
       
       //
       cs.KSU_Snapshot_Cum_GPA__c = con.KSU_CumulativeGPA__c;
       cs.KSU_Snapshot_FinancialAid__c = con.KSU_FinancialAid__c;
       cs.KSU_Snapshot_AccountBalance__c = con.KSU_AccountBalance__c;
       cs.KSU_Snapshot_EnrollmentStatus__c = con.KSU_EnrollmentStatus__c;
       cs.KSU_Snapshot_StudentType__c = con.KSU_StudentType__c;
       cs.KSU_Snapshot_CumulativeHours__c = con.KSU_CumulativeHours__c;
       cs.KSU_Snapshot_Level__c = con.KSU_Level__c;
       cs.KSU_Snapshot_Current_Academic_Standing__c = con.KSU_Current_Academic_Standing__c;
       
       
       Insert cs;
   } 
}

// Development notes:
//Check if contact has been changed by compating contact on account Contact.AccountId <> AccountId
