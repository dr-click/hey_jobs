require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'should be valid with full attributes' do
    job = FactoryBot.build(:job)
    expect(job).to be_valid
  end

  it 'has validation for presence title' do
		job = FactoryBot.build(:job, title: nil)
    job.valid?
		expect(job.errors.added?(:title, :blank)).to be true
	end

  it 'has validation for uniqueness title' do
		job_0 = FactoryBot.create(:job)
		job = FactoryBot.build(:job, title: job_0.title)
    job.valid?
		expect(job.errors.added?(:title, :taken)).to be true
	end
end
