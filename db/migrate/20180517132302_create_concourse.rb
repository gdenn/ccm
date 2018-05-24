class CreateConcourse < ActiveRecord::Migration[5.2]
  def change
    create_table :concourses do |t|
      t.string :name
      t.string :host
      t.string :env_type
      t.timestamps
    end

    create_table :teams do |t|
      t.string :name
      t.string :username
      t.string :password
      t.timestamps
    end

    create_table :pipelines do |t|
      t.string :name
      t.string :status
      t.timestamps
    end

    create_table :jobs do |t|
      t.string :name
      t.boolean :paused
      t.timestamps
    end

    create_table :builds do |t|
      t.integer :build_number
      t.string :status
      t.date :started
      t.date :finished
      t.timestamps
    end
    add_reference :jobs, :pipeline
    add_reference :teams, :concourse
    add_reference :pipelines, :team
    add_reference :builds, :job
  end
end
