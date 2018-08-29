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
#  sortByStat(stat)
#}

#function sortByStat(stat_name) {
#  var players = $.getJSON('/players').responseJSON['data']
#  var statList = []
#  players.forEach(function (player) {
#    statList.push([player.attributes.name], [player.attributes.stat_name])
#    })
#}
