User.create name: "admin", email: "admin@gmail.com", role: 1,
  password: "123123", password_confirmation: "123123"
User.create name: "user", email: "user@gmail.com", role: 0,
  password: "123123", password_confirmation: "123123"

10.times do |s|
  name = Faker::App.name
  description = Faker::Lorem.sentence
  Category.create! name: name, description: description
end

30.times do |s|
  content = Faker::App.name
  category_id = 1
  word = Word.create! content: content, category_id: category_id
  word_id = word.id
  answer_correct = Faker::Lorem.word
  WordAnswer.create! content: answer_correct, is_correct: true, word_id: word_id
  3.times do |t|
    answer_incorrect = Faker::Lorem.word
    WordAnswer.create! content: answer_incorrect, is_correct: false, word_id: word_id
  end
end

50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "12345678"
  User.create! name: name, email: email, password: password,
    password_confirmation: password, role: 0
end
