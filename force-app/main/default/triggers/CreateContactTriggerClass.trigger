trigger CreateContactTriggerClass on Account (after insert) {
    
   if(Trigger.isInsert)
   {
       CreateContactUtility.method1(Trigger.new);
   }}