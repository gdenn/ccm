# lib/tasks/db/sample.rake
#
# Drop the reset the database and fill it with demo data provided
# in db/samples.rb
# Requires yuo to be in development or staging mode
#
namespace :db do
  desc "Clear out the database and replace it with sample data"
  task :sample => ['db:ensure_development_or_staging','environment','db:drop','db:setup'] do
    sample_file = 'db/samples.rb'
    load(sample_file) if File.exists?(sample_file)
  end

  task :ensure_development_or_staging do
    if !['development','staging'].include? Rails.env
      puts "This task can only run in a development or staging environment"
      exit 
    end
  end
end