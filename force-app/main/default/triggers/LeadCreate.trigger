trigger LeadCreate on Lead (before insert, before update) {
    for (Lead l : Trigger.New)
    {
        l.Firstname = 'Dr.' + l.Firstname;
    }

}