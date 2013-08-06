class GithubController < ApplicationController
  respond_to :json

  def repo
    repo = client.repo('rylnd/shpec')
    respond_with repo
  end

  private

  def client
    @client ||= Octokit::Client.new(oauth_token: ENV['GITHUB_AUTH_TOKEN'])
  end
end
