require 'rails_helper'

RSpec.describe "campaigns/index", type: :view do
  before(:each) do
    @campaign_0 = FactoryBot.create(:campaign)
    @campaign_1 = FactoryBot.create(:campaign)

    assign(:campaigns, [
      @campaign_0,
      @campaign_1
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => @campaign_0.job.title.to_s, :count => 1
    assert_select "tr>td", :text => @campaign_1.job.title.to_s, :count => 1
  end
end
