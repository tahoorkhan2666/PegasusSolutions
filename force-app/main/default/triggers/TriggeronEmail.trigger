trigger TriggeronEmail on Contact (before insert) {
    for(Contact c : Trigger.new)
    {
        if(c.department == null)
        {
            System.debug('Could not update last survey sent field on account with cause : ');
        }
    }
  

}