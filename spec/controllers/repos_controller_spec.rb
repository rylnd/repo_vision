require 'spec_helper'

describe ReposController do
  describe '#start' do
    it 'works' do
      get :start
      response.should be_success
    end
  end
end
