define [
  'jquery', 
  'text!templates/mainView.html'
], ($, mainViewTemplate) ->
  class MainView
    el: "#mainRegion"
    render: ->
      $(@el).html(mainViewTemplate)
      @
  
  new MainView()