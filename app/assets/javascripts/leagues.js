function loadTeam(team_id) {
  event.preventDefault()
  var url = '/teams/' + team_id
  $.getJSON(url, function(data) {
    var player_array = Array.from(data.data.attributes.players)
    var output_array = []
    player_array.forEach(function (player) {
      i = {name: player["name"], position: player["position_id"]}
      output_array.push(i)
    })

    var position_array = []
    output_array.forEach(function (e) {
      position_array.push(e.position)
    })

    var final_array = []
    for (i = 0; i < 5; i++) {
      if (position_array.includes(i)) {
        final_array.push
      }
    }
    output_array.forEach(function (e) {
      for (i = 0; i < 5; i++) {
        if (e[1] == i) {
          final_array.push(e[0])
        } else {
          final_array.push('N/A')
        }
      }
    })
    var team = {
      name: data.data.attributes.name,
      points_total: data.data.attributes["points-total"],
      owner: data.data.attributes.user.name,
      qb: final_array[0],
      rb: final_array[1],
      wr: final_array[2],
      te: final_array[3],
      d: final_array[4]
    }
    var template = Handlebars.compile(document.getElementById("team-template").innerHTML)
    var result = template(team)
    var element = Array.from($('#teamid-' + data.data.id))
    element[0].innerHTML = result
  })
  return false
}

function hide() {
    $('.team_profile').hide();
}
