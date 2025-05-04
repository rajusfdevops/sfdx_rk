@isTest
public class EmployeeTriggerTest {
    @isTest
    static void testEmployeeTrigger() {
        // Create test data
        Employee__c newEmployee = new Employee__c(
            Name = 'John Doe'
        );

        Test.startTest();
        insert newEmployee;
        Test.stopTest();

        // Validate the tasks created
        List<Task> tasks = [SELECT Subject, Description, Priority, Status, WhatId 
                            FROM Task 
                            WHERE WhatId = :newEmployee.Id];
        System.assertEquals(2, tasks.size(), 'Two tasks should be created for the new employee.');
    }
}