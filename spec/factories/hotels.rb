FactoryGirl.define do
  factory :hotel do
    name        { Faker::Lorem.characters(rand(3..120)) }
    description { Faker::Lorem.sentence(rand(4..6),false,6) }
    price       { Faker::Number.positive(1.00,5000.00) }
    rating      { Faker::Number.positive(1,5) }
    #association :review, factory: :review
  end

end
