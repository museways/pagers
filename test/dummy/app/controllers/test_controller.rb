class TestController < ApplicationController

  def index
    @collection = Model.page(params[:p] || 1).per(1)
  end

end
