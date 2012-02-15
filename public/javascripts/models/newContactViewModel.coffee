define [
  'jquery', 
  'ko',
  'cs!models/contact',
  'cs!collections/contacts'
], ($, ko, Contact, contacts) ->
  class NewContactViewModel
    contact: new Contact()
    addContact: ->
       contacts.create(@contact)
       @contact = new Contact()       
       @
       
  new NewContactViewModel()
