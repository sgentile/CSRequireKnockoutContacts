define [
  'underscore', 
  'backbone', 
  'cs!views/mainView',
  'cs!views/addContactView'
  'cs!views/contactsListView'
], (_, Backbone, mainView, addContactView, contactsListView) ->
  class AppRouter extends Backbone.Router
    routes:
      "" : "home"     
           
    home: ->      
      mainView.render()
      addContactView.render()
      contactsListView.render()
      
    @initialize: (options)->
      app_router = new AppRouter()
      Backbone.history.start()      