FactoryBot.define do
  factory :campaign do
    job                 {association(:job)}
    status              0
    external_reference  ""
    ad_description      ""
  end
end
