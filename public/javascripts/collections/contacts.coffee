define [ "jquery", "underscore", "ko", 'cs!models/contact' ], 
($, _, ko, Contact) ->
  class ContactsCollection
    contacts: new ko.observableArray([])
    
    create: (newContact) ->
      self = @
      $.post('Contact', newContact, (data) ->
        self.contacts.push(data) 
      )
      
    fetch: ->
      self = @
      $.get('Contact', (data) ->
        _.each(data, (contact) ->
         self.contacts.push(contact)
        )  
      )

  new ContactsCollection