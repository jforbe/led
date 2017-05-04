require 'rails_helper'

RSpec.describe BlinkController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET make_blink" do
    it "returns http success" do
      get :make_blink
      expect(response).to be_success
    end
  end

end
