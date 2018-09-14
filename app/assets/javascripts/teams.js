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
