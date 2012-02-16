define [
  'jquery', 
  'text!templates/mainView.html'
], ($, mainViewTemplate) ->
  class MainPresenter
    el: "#mainRegion"
    template: mainViewTemplate
    render: ->
      $(@el).html(@template)
      @
  
  new MainPresenter()