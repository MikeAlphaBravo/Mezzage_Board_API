class Seed

  def self.begin
    seed = Seed.new
    seed.generate_users
    seed.generate_boards
    # seed.generate_mezzages
  end

  def generate_users
    10.times do |i|
      user = User.create!(
        name: Faker::Internet.user_name
      )
      puts "USER GENORATRON #{user.name}"
    end
  end

  def generate_boards
    30.times do |i|
      board = Board.create!(
        title: Faker::Book.title,
        description: Faker::Hipster.sentence
      )
      puts "BOARDOTRONIC 3000 #{board.title}"
    end
  end

  # def generate_mezzages
  #   10000.times do |i|
  #     user = User.find(rand(1..10))
  #     board = Board.find(rand(1..30))
  #
  #       title: Faker::Simpsons.location,
  #       body: Faker::RickAndMorty.quote
  #     )
  #   end
  # end
end

Seed.begin
