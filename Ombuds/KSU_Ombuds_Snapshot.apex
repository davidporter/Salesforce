trigger KSU_Ombuds_Snapshot on Case (after insert, after update) {
   if(trigger.IsAfter){
       
       // Here we are passing the boolean variable whether it is Insert or not.
       if(trigger.IsInsert){
          
          KSU_Ombuds_Snapshot_Class.getContactSnapshot( trigger.new );
       }
   }
}
