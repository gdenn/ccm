# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
    "release-candidate", 
    "update-runtime", 
    "update-stemcells", 
    "update-runtime-releases"
].each do |name|
    Pipeline.create(
        name: name,
        status: "active",
        team: "main",
        concourse: "a9s-stage-concourse",
        last_poll: DateTime.parse("09/01/2009 17:00"), 
        discovered: DateTime.parse("09/01/2009 17:00")
        )
end
