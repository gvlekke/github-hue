class GithubController < ApplicationController
  skip_before_filter :verify_authenticity_token

  respond_to :json

  def hook
    client = Hue::Client.new

    light = client.lights.first
    light.
    render json: params.to_json
  end
end