require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    @job_1 = FactoryBot.create(:job)
    @job_2 = FactoryBot.create(:job)
    assign(:jobs, [
      @job_1,
      @job_2
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => @job_1.title.to_s, :count => 1
    assert_select "tr>td", :text => @job_2.title.to_s, :count => 1
  end
end
