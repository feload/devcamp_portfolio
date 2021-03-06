blogs = 10
blogs.times do |blog|
   Blog.create!(
       title: Faker::Lorem.sentence,
       body: Faker::Lorem.paragraph(2)
   )
end

puts "#{blogs} blog posts created."

skills = 5
skills.times do |skill|
    Skill.create!(
        title: Faker::Job.field,
        percent_utilized: rand(100).to_s
    )
end

puts "#{skills} skills created."

portfolio = 9
portfolio.times do |portfolio|
    pic = rand(8) + 1
    Portfolio.create!(
        title: Faker::Job.title,
        subtitle: Faker::Job.field,
        body: Faker::Lorem.paragraph(2),
        main_image: "http://lorempixel.com/400/200/technics/#{pic}/",
        thumb_image: "http://lorempixel.com/100/50/technics/#{pic}/",
    )
end

puts "#{portfolio} portfolio items created."