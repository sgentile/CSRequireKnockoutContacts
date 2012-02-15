define [ "jquery", "underscore", "ko", 'cs!models/contact'], 
($, _, ko, Contact) ->
  class ContactsCollection
    contacts: new ko.observableArray([])
    
    create: (newContact) ->
      self = @
      $.post('Contact', newContact, (data) ->
        # contact = new Contact()
        # contact.firstname(data.firstname)
        # contact.lastname(data.lastname)
        self.contacts.push(data) 
      )
      
    fetch: ->
      self = @
      self.contacts.removeAll()
      $.get('Contact', (data) ->
        _.each(data, (contact) ->
          #unmapped = ko.mapping.toJS(contact)
          #mapped = ko.mapping.fromJS(unmapped)
          # mappedContact = new Contact()
          # mappedContact.firstname(contact.firstname)
          # mappedContact.lastname(contact.lastname)
          self.contacts.push(contact)
        )  
      )

  new ContactsCollection