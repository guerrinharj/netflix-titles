# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'date'

filepath = "db/netflix_titles.csv"

Title.destroy_all

CSV.foreach(filepath, headers: :first_row) do |row|
  title = Title.new
  title.show_id = row['show_id']
  title.type_title = row['type']
  title.name = row['title']
  title.director = row['director'].blank? ? '' : row['director'].split(/\s*,\s*/)
  title.cast = row['cast'].blank? ? '' : row['cast'].split(/\s*,\s*/)
  title.country = row['country'].blank? ? '' : row['country'].split(/\s*,\s*/)
  title.date_added = Date.parse(row['date_added'])
  title.release_year = row['release_year']
  title.rating = row['rating']
  title.duration = row['duration']
  title.listed_in = row['listed_in'].split(/\s*,\s*/)
  title.description = row['description']
  title.save!
  puts "#{title} is saved!"
end
