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
