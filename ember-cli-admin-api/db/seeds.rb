# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def truncate_companies
  Company.destroy_all
end

def create_companies
  5.times do
    Company.create(title: Faker::Company.name)
  end
end


truncate_companies
create_companies