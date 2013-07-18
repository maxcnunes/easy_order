FactoryGirl.define do
  factory :product do
    name "test"
    sequence(:out_of_stock){|n| n.even? }
    picture_url "http" 
    price 0
    
    # status
    trait :active do 
      active true 
    end
    trait :inactive do 
      active false 
    end
  end
end
