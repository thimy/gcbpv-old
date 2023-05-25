class ResourcesController < ApplicationController
  def index
  end

  def editions
    @editions = Edition.all
  end
end
