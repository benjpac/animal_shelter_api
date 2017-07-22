# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed  

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    100.times do |i|
      Animal.create!(
        name: Faker::GameOfThrones.character,
        species: ['cat','dog'].sample,
        age: Faker::Number.between(1, 10)
      )
    end
    puts "created animals"
  end
end

Seed.begin