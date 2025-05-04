public class ContactLastNameUpdate {
    
    public static void updateLastName(Id contactId, string newLastName){
        Contact contactToUpdate=[Select Id, LastName FROM Contact Where Id= :contactId LIMIT 1];
        contactToUpdate.LastName = newLastName;
        update contactToUpdate;
    }

}