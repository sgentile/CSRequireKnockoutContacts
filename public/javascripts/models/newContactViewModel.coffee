define [
  'jquery', 
  'ko',
  'cs!models/contact',
  'cs!collections/contacts'
], ($, ko, Contact, contacts) ->
  class NewContactViewModel
    contact: new Contact()
    addContact: (e) ->
       contacts.create(@contact) 
       
  new NewContactViewModel()
