def truncate_companies
  Company.destroy_all
end

def create_companies
  5.times do
    Company.create(title: Faker::Company.name)
  end
end

def truncate_users
  Company.destroy_all
end

def create_users
  5.times do
    User.create(email: Faker::Internet.email)
  end
end


truncate_companies
create_companies
truncate_users
create_users