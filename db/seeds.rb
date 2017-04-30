User.delete_all
User.create([{ name: 'Zacharias', email: 'demo@demo.com', password: "change_me", remember_created_at: nil }])
