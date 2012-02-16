define [ "jquery", "underscore", "knockout", 'cs!models/contact', 'komapping'], 
($, _, ko, Contact, komapping) ->
  class ContactsCollection
    contacts: new ko.observableArray([])
    
    create: (newContact, callback) ->
      self = @      
      $.post('Contact', newContact, (contactFromServer) ->
        contact = new Contact()
        contact = komapping.fromJS(contactFromServer);
        self.contacts.push(contact) 
        callback()
      )
      
    fetch: ->
      self = @
      self.contacts.removeAll()
      $.get('Contact', (data) ->
        _.each(data, (contactFromServer) ->
          contact = new Contact()
          contact = komapping.fromJS(contactFromServer);
          self.contacts.push(contact)
        )  
      )

  new ContactsCollection