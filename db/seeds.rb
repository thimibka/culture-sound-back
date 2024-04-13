admin = User.create(
  nickname: "thimibka",
  email: "fseetp@gmail.com",
  password: ENV['ADMIN_MDP'],
  is_admin: true
)

puts "Seed : Done"