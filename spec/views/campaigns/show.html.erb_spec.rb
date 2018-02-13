require 'rails_helper'

RSpec.describe "campaigns/show", type: :view do
  before(:each) do
    @campaign = assign(:campaign, FactoryBot.create(:campaign))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{@campaign.job.title}/)
  end
end
