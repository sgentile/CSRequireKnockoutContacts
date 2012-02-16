define [
  'jquery', 
  'ko',
  'cs!models/newContactViewModel',
  'text!templates/addContactView.html',
  'bootstrap'
], ($, ko, newContactViewModel, addContactViewTemplate) ->
  class AddContactView
    el: "#addContactRegion"
    model: newContactViewModel
    template: addContactViewTemplate
     
    render: ->
      $el = $(@el)
      $el.html(@template)
      ko.applyBindings(@model, $el[0])
      $("#addContactAlert").hide()
      @
      
  new AddContactView()
      
