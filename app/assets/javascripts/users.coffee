# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$(document).ready(function() {
#  attachListeners();
#});

#function attachListeners() {
#  $('#player_stats').on('click', () => getPlayerStats());
#}

#function getPlayerStats() {
#  var stat = $('option:selected')[0].value
#  var list = sortByStat(stat)
#}

#var sortByStat = function (stat) {
#  var players = $.getJSON('/players')
#  var playerData = players.responseJSON['data']
#  var orderedList = _.orderBy(playerData, ['attributes.${stat}', 'attributes.name'], ['desc', 'asc'])
#  var slicedList = _.slice(orderedList, 0, 10)
#  return slicedList
#}
