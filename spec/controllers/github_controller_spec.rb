require 'spec_helper'

describe GithubController do
  before do
    fake_client = double('client', repo: "{'fake': 'json'}")
    controller.stub(client: fake_client)
  end

  describe '#repo' do
    it 'returns JSON when requested' do
      get :repo, format: :json
      response.content_type.should eq(Mime::JSON)
    end
  end
end
