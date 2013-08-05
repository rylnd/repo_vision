class ReposController < ApplicationController
  respond_to :json
  before_filter :get_github_client, only: [:index]

  def index
    repos = @client.repo('rylnd/shpec')
    respond_with repos
  end

  private

  def get_github_client
    @client = Octokit::Client.new(oauth_token: ENV['GITHUB_AUTH_TOKEN'])
  end
end
