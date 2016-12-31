//: --------- TECHDEGREE PROJECT 1: SOCCER COORDINATOR ----------

// Player collection, using tuple as key containing each value. If I could be given tips are better ways to model this I would STRONGLY appreciate it.
var players = [
    "Joe Smith": (height: 42, experienced: true, guardian: "Jim and Jan Smith"),
    "Jill Tanner": (height: 36, experienced: true, guardian: "Clara Tanner"),
    "Bill Bon": (height: 43, experienced: true, guardian: "Sara and Jenny Bon"),
    "Eva Gordon": (height: 45 , experienced: false , guardian: "Wendy and Mike Gordon"),
    "Matt Gill": (height: 40 , experienced: false , guardian: "Charles and Sylvia Gill"),
    "Kimmy Stein": (height: 41 , experienced: false, guardian: "Bill and Hillary Stein"),
    "Sammy Adams": (height: 45, experienced: false, guardian: "Jeff Adams"),
    "Karl Saygan": (height: 42 , experienced: true, guardian: "Heather Bledsoe"),
    "Suzane Greenberg": (height: 44, experienced: true, guardian: "Henrietta Dumas"),
    "Sal Dali": (height: 41, experienced: false, guardian: "Gala Dali"),
    "Joe Kavailer": (height: 39 , experienced: false, guardian: "Sam and Elaine Kavalier"),
    "Ben Finkelstein": (height: 44, experienced: false, guardian: "Aaron and Jill Finkelstein"),
    "Diego Soto":   (height: 41, experienced: true, guardian: "Robin and Sarika Soto"),
    "Chloe Alaska": (height: 47 , experienced: false, guardian: "David and Jamie Alaska"),
    "Arnold Willis": (height: 43 , experienced: false, guardian: "Claire Willis"),
    "Phillip Helm": (height: 44 , experienced: true, guardian: "Thomas Helm and Eva Jones"),
    "Les Clay": (height: 42 , experienced: true, guardian: "Wynonna Brown"),
    "Herschel Krustofski": (height: 45 , experienced: true, guardian: "Hyman and Rachel Krustofski")
]


// Empty team collections, to-be appended to.

var teamSharks: [String] = []
var teamDragons: [String] = []
var teamRaptors: [String] = []

// Letters to guardians collection
var letters: [String] = []






// -------- DATA SORTING -----------
var experiencedPlayers: [String] = []
var inexperiencedPlayers: [String] = []

// Switch to sort experienced players from non-experienced players.
for player in players {
    
    switch player.value.experienced {
    case true: experiencedPlayers.append(player.key)
    case false: inexperiencedPlayers.append(player.key)
        
    }
}

// Populate teams w/ experienced players.

for player in experiencedPlayers {
    
    if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
        
    } else if teamDragons.count <= teamSharks.count && teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
        
    } else if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count {
        teamRaptors.append(player)
        
    }
    
}

// Populate teams w/ inexperienced players.

for player in inexperiencedPlayers {
    
    if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
        
    } else if teamDragons.count <= teamSharks.count && teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
        
    } else if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count {
        teamRaptors.append(player)
        
    }
    
}







// Printing letters to parents/guardians.

for player in teamSharks {
    
    if let players = players[player] {
        
        letters.append("Hello \(players.guardian), your child \(player) has been placed on team sharks! Congradulations! His/her first practice will be on March 17, 3pm.")
        
    }
}

for player in teamDragons {
    
    if let players = players[player] {
        
        letters.append("Hello \(players.guardian), your child \(player) has been placed on team dragons! Congradulations! His/her first practice will be on March 17, 1pm.")
        
    }
}

for player in teamRaptors {
    
    if let players = players[player] {
        
        letters.append("Hello \(players.guardian), your child \(player) has been placed on team raptors! Congradulations! His/her first practice will be on March 18, 1pm.")
        
    }
}


//Final print-out to console
for letter in letters {
    
    print(letter)
    
}









































