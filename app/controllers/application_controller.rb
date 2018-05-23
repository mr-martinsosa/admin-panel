class ApplicationController < ActionController::Base
  include Clearance::Controller
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
