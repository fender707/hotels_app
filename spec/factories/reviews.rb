FactoryGirl.define do
  factory :review do
    title       {Faker::Lorem.characters(rand(3..120))}
    comment     {Faker::Lorem.sentence(rand(4..6),false,6)}
    rating       {Faker::Number.positive(1,5)}
    association :hotel, factory: :hotel
  end

end
