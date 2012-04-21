class WelcomeController < ApplicationController
  def index
    @move_request = MoveRequest.new
    @move_request.build_origin
    @move_request.build_destination
  end
end
