define [
  'jquery', 
  'knockout',
  'cs!models/newContactViewModel',
  'text!templates/addContactView.html',
  'bootstrap',
  'jqueryvalidate'
], ($, ko, newContactViewModel, addContactViewTemplate) ->
  class AddContactPresenter
    el: "#addContactRegion"
    model: newContactViewModel
    template: addContactViewTemplate
     
    render: ->
      $el = $(@el)
      $el.html(@template)
      ko.applyBindings(@model, $el[0])
      $("#addContactAlert").hide()
      @
      
  new AddContactPresenter()
      
