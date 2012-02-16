define [
  'jquery', 
  'knockout',
  'cs!models/contact',
  'cs!collections/contacts',
  'bootstrap',
  'jqueryvalidate'
], ($, ko, Contact, contacts) ->
  class NewContactViewModel
    contact: new Contact()
    
    addContact: (form)->
       contacts.create(@contact, ->(
        @contact = new Contact()
        $("#addContactAlert").fadeIn('fast', -> $("#addContactAlert").fadeOut(5000))        
       )) if $(form).valid()
    
       
  new NewContactViewModel()
