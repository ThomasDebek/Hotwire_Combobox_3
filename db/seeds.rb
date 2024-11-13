Post.delete_all

p "Created Post "
300.times do
  post = Post.create(
    title: Faker::Book.title,
    body: Faker::Lorem.paragraph(sentence_count: 10)
  )
  p" #{post.title} - #{post.body[0..30]}..."
end
