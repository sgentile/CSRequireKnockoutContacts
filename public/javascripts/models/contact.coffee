define [
  'jquery', 
  'ko'
], ($, ko) ->
  class Contact
      
      
    constructor: ->
      @id = new ko.observable(null)
      @firstname = new ko.observable('')
      @lastname = new ko.observable('')
      @fullname = ko.computed =>
        @firstname() + " " + @lastname()
    
