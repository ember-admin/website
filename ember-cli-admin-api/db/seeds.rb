def truncate_companies
  Company.destroy_all
end

def create_companies
  50.times do
    Company.create(title: Faker::Company.name, lat: 50.448853, long: 30.513346)
  end
end

def truncate_users
  User.destroy_all
end

def create_users
  5.times do
    User.create(email: Faker::Internet.email)
  end
end

def truncate_products
  Product.destroy_all
end

def create_products
  50.times do
    Product.create(title: Faker::Commerce.product_name, price: Faker::Number.number(3), company: Company.all[rand(0..4)], user: User.all[rand(0..4)])
  end
end

truncate_companies
create_companies
truncate_users
create_users
truncate_products
create_products