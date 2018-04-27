class PipelinesController < ApplicationController
    layout "base"
  def index
    @pipelines = Pipeline.all
  end
end
