User.destroy_all
Student.destroy_all

User.create(
    email: "admin@panel.com",
    username: "admin",
    encrypted_password: 123
)

p "Number of admins created: #{User.count}"

Student.create(
    first_name: "Martin",
    last_name: "Sosa",
    age: 21,
    education: "PH.D"
)
p "Number of students created: #{Student.count}"