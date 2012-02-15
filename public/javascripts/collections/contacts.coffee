define [ "jquery", "underscore", "ko", 'cs!models/contact'], 
($, _, ko, Contact) ->
  class ContactsCollection
    contacts: new ko.observableArray([])
    
    create: (newContact, callback) ->
      self = @
      $.post('Contact', newContact, (data) ->
        self.contacts.push(data) 
        callback()
      )
      
    fetch: ->
      self = @
      self.contacts.removeAll()
      $.get('Contact', (data) ->
        _.each(data, (contact) ->
          self.contacts.push(contact)
        )  
      )

  new ContactsCollection