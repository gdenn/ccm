class ConcourseController < ApplicationController
  def index
    @concourses = Concourse.all
  end
end
