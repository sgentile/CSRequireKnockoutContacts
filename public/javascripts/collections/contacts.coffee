define [ "jquery", "ko", 'cs!models/contact' ], 
($, ko, Contact) ->
  class ContactsCollection
    contacts: new ko.observableArray([])
    
    create: (newContact) ->
      @contacts.push(newContact)
      
  new ContactsCollection