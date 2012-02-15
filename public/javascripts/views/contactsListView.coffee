define [
  'jquery', 
  'ko',
  'cs!collections/contacts',
  'text!templates/contactsListView.html'
], ($, ko, contacts, contactsListViewTemplate) ->
  class ContactsListView
    el: "#contactsRegion"
    model: contacts
    template: contactsListViewTemplate
    render: ->
       $el = $(@el)
       $el.html(@template)
       ko.applyBindings(@model, $el[0]) #$(@el)[0]
       @
  
  new ContactsListView()
