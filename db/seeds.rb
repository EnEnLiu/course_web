# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
  Course.create!(title: Faker::Educator.subject,
                 context: Faker::Lorem.sentence(word_count: 10),
                 course_amount: Faker::Number.between(from: 100, to: 1000),
                 money: ['USA', 'TWD'].sample,
                 course_type: ['advanced', 'intermediate', 'basic'].sample,
                 expiry_date: Faker::Date.forward(days: 30),
                 on_market: Faker::Boolean.boolean)
end
