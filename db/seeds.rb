# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning all tasks...'
Task.destroy_all

puts 'Creting new tasks....'
odev = { name: 'ödev', content: 'İngilizce 3-4' }
temizlik = { name: 'telefon et', content: 'cumaya ayarla' }

[odev, temizlik].each do |attributes|
  task = Task.create!(attributes)
  puts "Created #{task.name}."
end

puts 'Finished!'
