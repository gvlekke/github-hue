class GithubController < ApplicationController
  def hook
    params.to_json
  end
end