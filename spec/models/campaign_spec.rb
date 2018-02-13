require 'rails_helper'

RSpec.describe Campaign, type: :model do
  it 'should be valid with full attributes' do
    campaign = FactoryBot.build(:campaign)
    expect(campaign).to be_valid
  end

  it 'should has job' do
		campaign = FactoryBot.build(:campaign, job: nil)
    campaign.valid?
		expect(campaign.errors.added?(:job, "must exist")).to be true
	end
end
