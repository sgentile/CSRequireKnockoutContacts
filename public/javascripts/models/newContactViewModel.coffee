define [
  'jquery', 
  'ko',
  'cs!models/contact',
  'cs!collections/contacts',
  'bootstrap',
  'jqueryvalidate'
], ($, ko, Contact, contacts) ->
  class NewContactViewModel
    contact: new Contact()
    addContact: ->
       contacts.create(@contact, ->(
        @contact = new Contact()
        $("#addContactAlert").fadeIn('slow', -> $("#addContactAlert").fadeOut(2500))
       ))
       @
       
  new NewContactViewModel()
