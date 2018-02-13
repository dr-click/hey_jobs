require 'rails_helper'

RSpec.describe "campaigns/new", type: :view do
  before(:each) do
    @campaign = assign(:campaign, FactoryBot.create(:campaign))
  end

  it "renders new campaign form" do
    render

    # assert_select "form[action=?][method=?]", campaigns_path, "post" do
    #
    #   assert_select "select[name=?]", "campaign[job_id]"
    #
    #   assert_select "input[name=?]", "campaign[status]"
    #
    #   assert_select "input[name=?]", "campaign[external_reference]"
    #
    #   assert_select "textarea[name=?]", "campaign[ad_description]"
    # end
  end
end
