define [
  'jquery', 
  'ko'
], ($, ko) ->
  class Contact
    id: ko.observable(null)  
    firstname: ko.observable('')
    lastname: ko.observable('')
    
    constructor: ->
      @id(null)
      @firstname('')
      @lastname('')
      @fullname = ko.computed =>
        @firstname() + " " + @lastname()
    
