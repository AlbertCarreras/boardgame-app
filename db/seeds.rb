
Game.destroy_all
# User.destroy_all
# Ownership.destroy_all
# Event.destroy_all
# EventGame.destroy_all

games = [
  {title: "Dominion",
  description: " You are a monarch, like your parents before you, a ruler of a small pleasant kingdom of rivers and evergreens. Unlike your parents, however, you have hopes and dreams! You want a bigger and more pleasant kingdom, with more rivers and a wider variety of trees. You want a Dominion! In all directions lie fiefs, freeholds, and feodums. All are small bits of land, controlled by petty lords and verging on anarchy. You will bring civilization to these people, uniting them under your banner. But wait! It must be something in the air; several other monarchs have had the exact same idea. You must race to get as much of the unclaimed land as possible, fending them off along the way. To do this you will hire minions, construct buildings, spruce up your castle, and fill the coffers of your treasury. Your parents wouldn't be proud, but your grandparents, on your mother's side, would be delighted. In Dominion, each player starts with an identical, very small deck of cards. In the center of the table is a selection of other cards the players can &quot;buy&quot; as they can afford them. Through their selection of cards to buy, and how they play their hands as they draw them, the players construct their deck on the fly, striving for the most efficient path to the precious victory points by game end. Dominion is not a CCG, but the play of the game is similar to the construction and play of a CCG deck. The game comes with 500 cards. You select 10 of the 25 Kingdom card types to include in any given play&mdash;leading to immense variety. Part of the Dominion series.",
  minplayers: 2,
  maxplayers: 4,
  age: 13,
  yearpublished: 2008,
  designer: "Donald X. Vaccarino",
  image: "https://cf.geekdo-images.com/original/img/oN8CHUZ8CF6P1dFnhMCJXvE8SOk=/0x0/pic394356.jpg" },

  {title: "Santorini",
  description: "You are a god out of Greek mythology. Compete against fellow gods to get a loyal follower on top of a temple on the beautiful island of Santorini. Each turn you move, and then build a part of the temple. Be careful where you build lest the opposing god get the advantage. Strategic thinking and your unique godly power will win the day. Santorini includes 75 wooden tiles; 10 wooden domes; and 4 wooden men - all whitewashed and packaged in a white box. Eight Greek god cards are included. Each depicts a classic Greek sculpture of the god and a description of their unique godly power. (The first, bagged, edition included pieces for a third player and only five god cards.) The rules, god cards and extra god cards can be downloaded from the Files section. The rules are file Santorini2007.doc.",
  minplayers: 2,
  maxplayers: 3,
  age: 0,
  yearpublished: 2004,
  designer: "Gordon Hamilton",
  image: "https://cf.geekdo-images.com/original/img/xEc-S1X7N35m4lW7di0iiYh8dss=/0x0/pic42278.jpg"},

  {title: "Star Realms" ,
  description: "Star Realms is a spaceship combat deck-building game by Magic Hall of Famers Darwin Kastle (The Battle for Hill 218) and Rob Dougherty (Ascension Co-designer).<br/><br/>Star Realms is a fast paced deck-building card game of outer space combat. It combines the fun of a deck-building game with the interactivity of Trading Card Game style combat. As you play, you make use of Trade to acquire new Ships and Bases from the cards being turned face up in the Trade Row from the Trade Deck. You use the Ships and Bases you acquire to either generate more Trade or to generate Combat to attack your opponent and their bases. When you reduce your opponent&rsquo;s score (called Authority) to zero, you win!<br/><br/>Multiple decks of Star Realms and/or Star Realms: Colony Wars, one for every two people, allows up to six players to play a variety of scenarios. Also, in the newest version, there is new ways to play that allow up to 6 players with modes like Boss, Hunter, and Free for All. You can also add Star Realms Colony Wars to the deck to make it 4 players. Each of the cards in the 80 card Trade Deck is a Ship or a Base belonging to one of four factions: The Trade Federation, The Blobs, The Star Empire or The Machine Cult.",
  minplayers: 2,
  maxplayers: 2,
  age: 12,
  yearpublished: 2014,
  designer: "Robert Dougherty",
  image: "https://cf.geekdo-images.com/original/img/XRgMJVv4YweLlANgVvxeZsQ4lm0=/0x0/pic1903816.jpg" }
]
games.each {|game| Game.create(game)}
