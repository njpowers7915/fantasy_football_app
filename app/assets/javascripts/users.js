
function getAllPlayers() {
      //event.preventDefault()
      $.getJSON('/players', function(data) {
        var playerArray = []
        data.data.forEach(function (player) {
          var individualArray = [player.attributes.name, player.attributes.position.name,
            player.attributes["pro-team"]]
          playerArray.push(individualArray)
        })
        var statArray = playerArray.sort(function (a, b) {
          return a[0] - b[0]
        })
        statArray.forEach(function (element) {
          $("#allPlayers").append('<li>' + element[0] + '--' + element[1] + '--' + element[2] + '</li><br>')
        })
      })
      return false
    }

function getStatLeaders() {
  event.preventDefault()
  $.getJSON('/players', function(data) {
    var playerArray = []
    data.data.forEach(function (player) {
    var stat = $('option:selected')[0].value
    var individualArray = [player.attributes.name, player.attributes.position.name,
      player.attributes["pro-team"], player.attributes[stat]]
    playerArray.push(individualArray)
    })
  var statArray = playerArray.sort(function (a, b) {
    return b[3] - a[3]
    }).slice(0, 5)
  var stat_name = { stat_name: $('option:selected')[0].innerHTML }
  var templateArray = []
  statArray.forEach(function (player) {
    var individualStats = {
      name: player[0],
      position: player[1],
      pro_team: player[2],
      stat: player[3]
      //stat_name: $('option:selected')[0].innerHTML,
    }
    templateArray.push(individualStats)
    })
    var template_header = Handlebars.compile(document.getElementById("stat_header_template").innerHTML)
    var template_body = Handlebars.compile(document.getElementById("stat_body_template").innerHTML)
    var header_result = template_header(stat_name)
    var body_result = template_body(templateArray)
    document.getElementById("statLeadersHeader").innerHTML = header_result
    document.getElementById("statLeadersBody").innerHTML = body_result
  })
  return false
}
