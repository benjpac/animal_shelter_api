FactoryGirl.define do
  factory :animal do
    name Faker::Book.author
    species ['cat','dog'].sample
    age Faker::Number.between(1, 10)
  end
end
