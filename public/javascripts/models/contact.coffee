define [
  'jquery', 
  'ko'
], ($, ko) ->
  class Contact
    firstname : ko.observable('')
    lastname : ko.observable('')
