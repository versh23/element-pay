//= require rails-ujs
//= require jquery
//= require materialize
//= require turbolinks
//= require_tree .



$(document).on('turbolinks:load', function() {
  $('select').formSelect();
  
  });