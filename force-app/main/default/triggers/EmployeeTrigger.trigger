trigger EmployeeTrigger on Employee__c (after insert) {
    List<Task> tasks = new List<Task>();
    for (Employee__c emp : Trigger.New) {
        tasks.add(new Task(
            Subject = 'Complete Onboarding for ' + emp.Name,
            Description = 'Ensure all onboarding steps are completed for ' + emp.Name,
            Priority = 'High',
            Status = 'Not Started',
            WhatId = emp.Id
        ));
        tasks.add(new Task(
            Subject = 'Setup Workstation for ' + emp.Name,
            Description = 'Prepare workstation and tools for ' + emp.Name,
            Priority = 'Medium',
            Status = 'Not Started',
            WhatId = emp.Id
        ));
    }
    if (!tasks.isEmpty()) {
        insert tasks;
    }
}