require 'rails_helper'

RSpec.describe AdsController, type: :controller do

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end

    it "returns list of ads" do
      get :index, params: {}, session: valid_session
      ads = [Ad.new({ "reference" => "101", "status" => "enabled", "description" => "Created By Mostafa" })]
      expect(assigns(:ads)).not_to be_nil
      expect(assigns(:ads)[0].reference).to eql(ads[0].reference)
    end
  end
end
