10.times do 
  client = Client.new
  client.name = Faker::Name.name
  client.company = Faker::Company.name
  client.email = Faker::Internet.email
  client.website = Faker::Internet.domain_name
  client.save
end

40.times do 
  project = Project.new
  project.name = Faker::App.name
  project.description = Faker::Lorem.paragraph
  project.status = ["new", "completed", "on-going"].shuffle.first
  project.start_date = Faker::Date.between(Date.today - 2.years, Date.today)
  project.client_id = Client.order("RANDOM()").first.id
  project.save
end