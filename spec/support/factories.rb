FactoryGirl.define do

  factory :item do
    sequence(:name) { |n| "ol bobby#{n}" }
    sequence(:description) { |n| "#{n}up" }
    sequence(:image_url) { |n| "www.#{n}.com" }
  end
end
