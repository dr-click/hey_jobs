FactoryBot.define do
  factory :campaign do
    job                 {association(:job)}
    status              0
    sequence(:external_reference)
    ad_description      "ad description"
  end
end
