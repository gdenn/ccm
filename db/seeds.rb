# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do 
    c = Concourse.create!(name: Faker::GameOfThrones.character, host: Faker::Internet.ip_v4_address)
    2.times do 
        t = c.teams.create!(name: Faker::HarryPotter.character, username: "sysop", password: Faker::Bitcoin.address)
        10.times do
            p = t.pipelines.create!(name: Faker::DragonBall.character + "_pipelinse", status: ["running", "failing", "idle"].sample)
            50.times do |i|
                p.builds.create!(build_number: i)
            end
        end
    end
end