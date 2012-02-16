define [
  'underscore', 
  'backbone', 
  'cs!presenters/mainPresenter',
  'cs!presenters/addContactPresenter'
  'cs!presenters/contactsListPresenter'
], (_, Backbone, mainPresenter, addContactPresenter, contactsListPresenter) ->
  class AppRouter extends Backbone.Router
    routes:
      "" : "home"     
           
    home: ->      
      mainPresenter.render()
      addContactPresenter.render()
      contactsListPresenter.render()
      
    @initialize: (options)->
      app_router = new AppRouter()
      Backbone.history.start()      