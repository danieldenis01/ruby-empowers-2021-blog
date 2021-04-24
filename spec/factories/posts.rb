FactoryBot.define do
  factory :post do
    title { FFaker::Name.unique.name }
    content { FFaker::Lorem.paragraph }
  end
end
