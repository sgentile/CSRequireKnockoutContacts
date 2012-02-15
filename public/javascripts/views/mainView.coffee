define [
  'jquery', 
  'text!templates/mainView.html'
], ($, mainViewTemplate) ->
  class MainView
    el: "#mainRegion"
    template: mainViewTemplate
    render: ->
      $(@el).html(@template)
      @
  
  new MainView()