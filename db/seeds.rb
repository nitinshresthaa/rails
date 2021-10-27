require 'faker'

20.times.each do
  User.create!(
    username: Faker::Internet.username(specifier: 10),
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

40.times.each do
  Article.create!(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraphs(number: 3).join('<br />'),
    user_id: User.all.sample.id,
  )
end
