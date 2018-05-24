#
# db/samples.rb
#
# Create sample data for local development purpose
#
#
def create_builds(job:)
  started = Time.now
  finished = Time.now 10*60 # set finished to now + 60 minutes
  10.times { |i| job.builds.create!(
    build_number: i, 
    status: ["aborted", "failed", "succeeded", "pending", "started"].sample,
    started: started, 
    finished: finished
  ) }
end

def create_jobs(pipeline:)
  ["fetch-release", "migrate", "test", "send-email"].each do |name|
    j = pipeline.jobs.create(name: name)
    create_builds(job: j)
  end
end

def create_pipelines(team:)
  2.times do
    p = team.pipelines.create!(
      name: ["fancy-deployments", "crazy-auto-scaler", "docker-image-observer", "email-spammer", "system-reaper"].sample,
      status: ["running", "idle"].sample
    )
    create_builds(pipeline: p) 
  end
end

def create_teams(concourse:)
  ["main", "dev"].each do |team|
    t = concourse.teams.create!(name: team, username: "sysop", password: Faker::Bitcoin.address)
    create_pipelines(team: t)
  end
end

def create_concourses
  5.times do
    c = Concourse.create!(
      name: Faker::GameOfThrones.character, 
      host: Faker::Internet.ip_v4_address, 
      env_type: ["production", "staging"].sample
    )
    create_teams(concourse: c)
  end 
end

create_concourses
