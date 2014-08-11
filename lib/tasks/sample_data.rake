namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    users = User.all
    10.times do
      content = Faker::Lorem.sentence(5)
      users.each {|user| user.microposts.create!(content: content)}
    end
  end
end
   
