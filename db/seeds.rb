class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
  end

  def generate_reviews
    20.times do |i|
      review  = Review.create!(
        content: Faker::Hipster.paragraph(sentence_count: 2),
        author: Faker::FunnyName.name,
        place: Faker::Address.country
      )
      puts "Review #{i} for #{review.place} by #{review.author}: '#{review.content}' "
    end
  end
end

Seed.begin
  