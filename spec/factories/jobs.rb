FactoryBot.define do
  factory :job do
    title        {Faker::Name.unique.title}
    description "description"
  end
end
