# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.create name: 'Aline', email: 'admin@example.com', password: 123456

Client.create name: 'Jose', email: 'jose@email.com', phone: '34567890'
Client.create name: 'Joao', email: 'joao@email.com', phone: '09876543'

Product.create name: 'perfume', price: 12
Product.create name: 'brinco', price: 15
Product.create name: 'tablet', price: 300  

