admin = User.create(
  nickname: "thimibka",
  email: ENV['ADMIN_MAIL'],
  password: ENV['ADMIN_MDP'],
  is_admin: true
)

puts "Seed : Done"