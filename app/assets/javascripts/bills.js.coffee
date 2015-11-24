# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  $('td[data-link]').click ->
    window.location = $(this).data('link')
    return
  return

jQuery ->
      table =  $('#loan_table').dataTable()
    alert ('vfder')
        sPaginationType: "full_numbers"
    select: true
