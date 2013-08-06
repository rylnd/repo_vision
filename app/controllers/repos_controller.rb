class ReposController < ApplicationController
  respond_to :json

  def index
    repos = github_client.repo('rylnd/shpec')
    respond_with repos
  end

  private

  def github_client
    @github_client ||= Octokit::Client.new(oauth_token: ENV['GITHUB_AUTH_TOKEN'])
  end
end
