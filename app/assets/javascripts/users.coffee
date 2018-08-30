# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$(document).ready(function() {
#  attachListeners();
#});

#function attachListeners() {
#  $('#player_stats').on('click', () => getPlayerStats());
#}

#var getPlayerStats = function () {
#  var stat = $('option:selected')[0].value
#  var list = sortByStat(stat)
#}

#var sortByStat = function (stat) {
#  var players = $.getJSON('/players')
#  var playerData = players.responseJSON['data']
#  var orderedList = _.orderBy(playerData, ['attributes.${stat}', 'attributes.name'], ['desc', 'asc'])
#  var slicedList = _.slice(orderedList, 0, 10)
#  var pageOutput = []
#  slicedList.forEach(function (e) {
#    var individualPlayerInfo = {
#      name: e.attributes["name"],
#      position: e.attributes["position"]["name"],
#      pro_team: e.attributes["pro-team"]],
#      stat: e.attributes[stat]]
#    }
#    pageOutput.push(individualPlayerInfo)
#    })
#  return individualPlayerInfo
#}

function loadPlayers() {
  var players =


  var template = Handlebars.compile(document.getElementById("stat_leader_template").innerHTML);
  var result = template(players);
  document.getElementById("stat_leaders").innerHTML += result;
}
