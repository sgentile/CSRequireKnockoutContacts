define [
  'jquery', 
  'knockout',
  'cs!collections/contacts',
  'text!templates/contactsListView.html'
], ($, ko, contacts, contactsListViewTemplate) ->
  class ContactsListPresenter
    el: "#contactsRegion"
    model: contacts
    template: contactsListViewTemplate
    
    constructor: ->
      @model.fetch()
      
    render: ->
       $el = $(@el)
       $el.html(@template)
       ko.applyBindings(@model, $el[0])
       @
  
  new ContactsListPresenter()
