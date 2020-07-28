FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory :course do
    title { Faker::Educator.subject }
    context { Faker::Lorem.sentence(word_count: 10) }
    course_amount { Faker::Number.between(from: 100, to: 1000) }
    money { ['USA', 'TWD'].sample }
    course_type { ['advanced', 'intermediate', 'basic'].sample }
    on_market { 'ture' }
    expiry_date { Faker::Date.forward(days: 30) }
  end

  factory :type do
    name { ['Advanced', 'Intermediate', 'Basic'].sample }
  end

end
