class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token, if: :json_request?
  
    protected
  
    def json_request?
      request.content_type&.include?('application/json')
    end
  end
  