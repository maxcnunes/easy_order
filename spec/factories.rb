FactoryGirl.define do
  factory :product do
    price 0
    name "rice"
    active true
    out_of_stock false
    picture_url "http://"
  end
end
