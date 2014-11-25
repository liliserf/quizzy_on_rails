# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = [
  {
    question: "I am the leader of the Autobots:",
    choices: [
      "Star Scream",
      "Optimus Prime",
      "Megatron",
      "Ratchet"
    ],
    answer: "Optimus Prime"
  },

  {
    question: "I am the director responsible for making the recent Transformers movies the success they are by making sure to include lots of  blowing sh*t up:",
    choices: [
      "Steven Speilberg",
      "James Cameron",
      "Chris Nolan",
      "Michael Bay",
    ],
    answer: "Michael Bay"
  },
    {
    question: "I was ripped in half and destroyed by the leader of the Decepticons:",
    choices: [
    "Jazz",
    "Cliff Jumper",
    "Iron Hide",
    "Bumble Bee",
    ],
    answer: "Jazz"
  }
]

questions.each do |quest|
  Question.create(
    question_text: quest[:question],
    choices: quest[:choices].to_json,
    answer: quest[:answer]
    )
end
