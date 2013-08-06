require 'spec_helper'

describe ReposController do
  before do
    fake_client = double('client', repo: "{'fake': 'json'}")
    controller.stub(github_client: fake_client)
  end

  describe '#index' do
    it 'returns JSON when requested' do
      get :index, format: :json
      response.content_type.should eq(Mime::JSON)
    end
  end
end
