@isTest
public class ContactLastNameUpdateTest {
    
    @isTest
    static void testUpdateLastName() {
        // Step 1: Create test data
        Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com'
        );
        insert testContact;

        // Step 2: Call the method to update the last name
        String newLastName = 'Smith';
        Test.startTest();
        ContactLastNameUpdate.updateLastName(testContact.Id, newLastName);
        Test.stopTest();

        // Step 3: Query the updated contact and validate the changes
        Contact updatedContact = [SELECT Id, LastName FROM Contact WHERE Id = :testContact.Id];
        System.assertEquals(newLastName, updatedContact.LastName, 'The last name should be updated to Smith.');
    }

    @isTest
    static void testInvalidContactId() {
        // Step 1: Use a non-existent Contact ID
        Id invalidContactId = '003000000000000AAA';
        String newLastName = 'Invalid';

        // Step 2: Verify that the method throws an exception for an invalid ID
        Test.startTest();
        try {
            ContactLastNameUpdate.updateLastName(invalidContactId, newLastName);
            System.assert(false, 'Expected an exception for an invalid Contact ID.');
        } catch (Exception e) {
            System.assert(e.getMessage().contains('List has no rows for assignment'), 'Expected a "no rows" exception.');
        }
        Test.stopTest();
    }
}