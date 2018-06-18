
Game.destroy_all
User.destroy_all
Ownership.destroy_all
Event.destroy_all
EventGame.destroy_all

users = [
  {name: "Greg Schmitt"},
  {name: "Tom Jones"},
  {name: "Buzz Aldrin"},
  {name: "Mickey Spillane"},
  {name: "Hope Fully"},
  {name: "Alberto Carreras"},

]

users.each {|user| User.create(user)}

games = [
  {title: "Monopoly"},
  {title: "Sushi Go"}
]

games.each {|game| Game.create(game)}

events = [
  {title: "Monopoly Madness", date: Time.now, location: "Brooklyn, NY", host_id: User.first.id},
  {title: "Sushi Go Go Go", date: Time.now, location: "Metropolitan Museum of Art", host_id: User.first.id},
  {title: "Games for Kids", date: Time.now, location: "Childrens Museum", host_id: User.last.id}
]

events.each {|event| Event.create(event)}

Ownership.create(game: Game.find_by(title: "Monopoly"), user: User.last)
Ownership.create(game: Game.find_by(title: "Sushi Go"), user: User.first)

EventGame.create(game: Game.find_by(title: "Monopoly"), event: Event.find_by(title: "Monopoly Madness"))
EventGame.create(game: Game.find_by(title: "Sushi Go"), event: Event.find_by(title: "Sushi Go Go Go"))
EventGame.create(game: Game.find_by(title: "Monopoly"), event: Event.find_by(title: "Games for Kids"))
EventGame.create(game: Game.find_by(title: "Sushi Go"), event: Event.find_by(title: "Games for Kids"))
