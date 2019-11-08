# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# [ 'admin@elementpay.com','secret', 'Иван',  'Иванович', 'Иванов']

# User.create( email: 'admin@elementpay.ru', password: 'secret') 
User.create( email: 'test1@elementpay.ru', password: 'testtest') 
User.create( email: 'test2@elementpay.ru', password: 'testtest') 
User.create( email: 'test3@elementpay.ru', password: 'testtest') 
User.create( email: 'test4@elementpay.ru', password: 'testtest') 
User.create( email: 'test5@elementpay.ru', password: 'testtest') 
User.create( email: 'test6@elementpay.ru', password: 'testtest') 
(0..9).each do |n|
  User.create( email: "test#{n+1}@elementpay.ru", password: 'testtest') 
end
  # 'Иван',  'Иванович', 'Иванов'

# )

Payment.create_tips


create_sample_wallets
check_wallets_empty
tips_possible_for_waier_wallets

When.i_have_correct_params

 




