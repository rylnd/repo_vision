require 'spec_helper'

describe ReposController do
  before do
    fake_client = double('client')
    fake_client.stub(repo: "{'fake': 'json'}")
    Octokit::Client.stub(new: fake_client)
  end

  describe '#index' do
    it 'returns JSON when requested' do
      get :index, format: :json
      response.content_type.should eq(Mime::JSON)
    end
  end
end
