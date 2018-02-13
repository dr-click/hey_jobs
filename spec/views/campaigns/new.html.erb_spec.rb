require 'rails_helper'

RSpec.describe "campaigns/new", type: :view do
  before(:each) do
    @campaign = assign(:campaign, FactoryBot.create(:campaign))
  end

  it "renders new campaign form" do
    render
  end
end
