define [
  'jquery', 
  'ko',
  'cs!models/newContactViewModel',
  'text!templates/addContactView.html',
  'jqueryvalidate',
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
#      $("#addContactAlert").data('dismiss', 'alert')
      @
      
  new AddContactView()
      
