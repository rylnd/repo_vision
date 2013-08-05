require 'spec_helper'

describe ReposController do
  before { get :index, format: :json }

  describe '#index' do
    it 'returns JSON' do
      response.content_type.should eq(Mime::JSON)
    end

    it "returns a repo's data" do
      body = JSON.parse(response.body)
      body.should have_key('owner')
    end
  end
end
