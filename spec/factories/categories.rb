# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    
    # category_with_products will create products data after the category has been created
    factory :category_with_products do
      ignore { products_count 5 }

      after(:create) do |category, evaluator|
        FactoryGirl.create_list(:product, evaluator.products_count, :active, category: category)
      end
    end
  end
end
