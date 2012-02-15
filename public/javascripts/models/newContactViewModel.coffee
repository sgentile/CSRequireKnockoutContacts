define [
  'jquery', 
  'ko',
  'cs!models/contact',
  'cs!collections/contacts',
  'bootstrap'
], ($, ko, Contact, contacts) ->
  class NewContactViewModel
    contact: new Contact()
    addContact: ->
       contacts.create(@contact)
       @contact = new Contact()     
       $("#addContactAlert").fadeIn('slow', -> $("#addContactAlert").fadeOut(800))
       @
       
  new NewContactViewModel()
