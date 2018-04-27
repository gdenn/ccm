class PipelinesController < ApplicationController
    layout "sufee-admin-dashboard"
  def index
    @pipelines = Pipeline.all
  end
end
