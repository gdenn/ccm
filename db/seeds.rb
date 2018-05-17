# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times { Concourse.create(name: Faker::GameOfThrones.character, host: Faker::Internet.ip_v4_address) }
40.times { Team.create(name: Faker::HarryPotter.character, username: "sysop", password: Faker::Bitcoin.address, concourse_id: rand(1..20)) }
80.times { Pipeline.create(name: Faker::DragonBall.character + "_pipelinse", status: ["running", "failing", "idle"].sample, team_id: rand(1..40)) }
1000.times { |i| Build.create(build_number: i, pipeline_id: rand(1..80)) }


