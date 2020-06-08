FactoryBot.define do
  factory(:review) do
    author {Faker::FunnyName.name}
    content {Faker::Hipsger.paragraph(sentence_count:2)}
    place {Faker::Address.country}
  end
end