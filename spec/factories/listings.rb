FactoryGirl.define do
  factory :listing do
    commission 1.5
    value 1.5
    is_active false
    requires_application false
    description "MyText"
    is_sponsored false
    product_url "MyString"
  end
end
