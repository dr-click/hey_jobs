require 'rails_helper'

RSpec.describe Ad, type: :model do
  it 'has statuses' do
    expect(Ad.statuses).to eql({enabled: 0, disabled: 1})
  end

  it 'returns status name' do
    ad = Ad.new({})
    ad.status = :enabled
    expect(ad.status).to eql(:enabled)
  end

  it 'returns true or false when check status' do
    ad = Ad.new({})
    ad.status = :disabled
    expect(ad.disabled?).to be true
  end

  it 'has statuses setter' do
    ad = Ad.new({})
    expect(ad.status).to be nil
    ad.enabled!
    expect(ad.enabled?).to be true
  end
end
