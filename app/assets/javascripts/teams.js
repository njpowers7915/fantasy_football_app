$(document).ready(function() {
  attachListeners();
});

function attachListeners() {
  $('button').on('click', function() {
    joinLeague(leagueID);
  })
}

function joinLeague(leagueID) {
  event.preventDefault()
  var thisURL = this.location.pathname.split('/')
  var currentTeamId = thisURL[thisURL.length - 1]
  var teamData = { league_id: leagueID };

  $.ajax({
    type: 'PATCH',
    url: `/teams/${currentTeamId}`,
    contentType: 'application/json',
    data: JSON.stringify({
      league_id: leagueID
    }),
  })
}

function showLeagues() {
  event.preventDefault()
  var leagueContainer = Array.from($('#leagueContainer'))[0]
  leagueContainer.innerHTML = ('<h4>Fantasy Football Leagues</h4>')
  fetch('/leagues')
    .then(response => response.json())
    .then(function(data) {
      let leagues = data.data

      leagues.forEach(function(league) {
        leagueContainer.innerHTML += ('<li>'
          + league.attributes.name + ' <button onclick="joinLeague(' + league.id + ')">JOIN</button></li><br>')
      })
    })
}

//Show player profiles on team#show
function loadPlayer(player_id) {
    event.preventDefault()
    var url = '/players/' + player_id
    fetch(url)
      .then(response => response.json())
      .then(function(data) {
        var player = {
          name: data.data.attributes.name,
          position: data.data.attributes.position.name,
          salary: data.data.attributes.salary,
          points: data.data.attributes.points,
          pro_team: data.data.attributes["pro-team"],
          touchdowns: data.data.attributes.touchdowns,
          pass_yards: data.data.attributes["pass-yards"],
          rush_yards: data.data.attributes["rush-yards"],
          receptions: data.data.attributes.receptions,
          rec_yards: data.data.attributes["rec-yards"]
        }
        var template = Handlebars.compile(document.getElementById("player-template").innerHTML)
        var result = template(player)
        var element = Array.from($('#playerid-' + data.data.id))
        element[0].innerHTML = result
      })
    return false
  }

  //Hide player profiles from team#show
  function hide() {
        $('.individual_profile').hide();
  }
