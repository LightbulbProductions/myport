# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |blog|
  Blog.create!(
  title: "My Post #{blog}",
  body: "The real importance of misquotes – and mistranslation as well – is undervalued. Whether they are big or small, hidden or manifest, made in bad or in good faith, they are always compromising because their inevitable destiny is to generate false commonplaces to be used either
 for or against the author. Indeed, while a specialist can probably detect at first glance the misquote or the mistranslation, the average reader – that is, the vast majority of an author's audience – is condemned to believe to what he sees, no matter how disappointing it is."
  )
end

puts "5 blog posts created"

5.times do |skill|
  Skill.create!(
  title: "Rails #{skill}"
  )
end

puts "5 skills created"


5.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio title: #{portfolio_item}",
  subtitle: "My services",
  body: "lots of stuff, hey",
  main_image: "http://placehold.it/600x400" ,
  thumb_image: "http://placehold.it/350x200" 
  )
end

puts "5 portfolio_items created"