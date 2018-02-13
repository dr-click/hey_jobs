require 'rails_helper'

RSpec.describe CampaignsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Campaign. As you add validations to Campaign, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryBot.build(:campaign).attributes
  }

  let(:invalid_attributes) {
    FactoryBot.build(:campaign, job: nil).attributes
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CampaignsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #compare" do
    it "returns a success response" do
      campaign = FactoryBot.create(:campaign)
      get :compare, params: {}, session: valid_session
      expect(response).to be_success
    end

    it "returns a correct count" do
      campaign = FactoryBot.create(:campaign)
      get :compare, params: {}, session: valid_session
      expect(assigns(:campaigns).count).to eql(Campaign.count)
    end

    it "returns a correct results" do
      campaign = FactoryBot.create(:campaign, external_reference: 101)
      get :compare, params: {}, session: valid_session
      expect(assigns(:campaigns).count).to eql(Campaign.count)
    end
  end

  describe "GET #index" do
    it "returns a success response" do
      campaign = FactoryBot.create(:campaign)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      campaign = FactoryBot.create(:campaign)
      get :show, params: {id: campaign.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      campaign = FactoryBot.create(:campaign)
      get :edit, params: {id: campaign.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Campaign" do
        expect {
          post :create, params: {campaign: valid_attributes}, session: valid_session
        }.to change(Campaign, :count).by(1)
      end

      it "redirects to the created campaign" do
        post :create, params: {campaign: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Campaign.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {campaign: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryBot.build(:campaign).attributes
      }

      it "updates the requested campaign" do
        campaign = FactoryBot.create(:campaign)
        put :update, params: {id: campaign.to_param, campaign: new_attributes}, session: valid_session
        campaign.reload
      end

      it "redirects to the campaign" do
        campaign = FactoryBot.create(:campaign)
        put :update, params: {id: campaign.to_param, campaign: valid_attributes}, session: valid_session
        expect(response).to redirect_to(campaign)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        campaign = FactoryBot.create(:campaign)
        put :update, params: {id: campaign.to_param, campaign: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested campaign" do
      campaign = FactoryBot.create(:campaign)
      expect {
        delete :destroy, params: {id: campaign.to_param}, session: valid_session
      }.to change(Campaign, :count).by(-1)
    end

    it "redirects to the campaigns list" do
      campaign = FactoryBot.create(:campaign)
      delete :destroy, params: {id: campaign.to_param}, session: valid_session
      expect(response).to redirect_to(campaigns_url)
    end
  end

end
