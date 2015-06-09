# User.create(
#   first_name: "robert",
#   last_name: "austin",
#   email: "rob@jugglerdigital.com",
#   username: "rob",
#   password: "rob"
# )

# User.create(
#   first_name: "sherif",
#   last_name: "ambusudo",
#   email: "sherif@jugglerdigital.com",
#   username: "sherif",
#   password: "sherif"
# )

5.times do
  Question.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph(3)
  )
end

# Generate Answers
i = 0
5.times do
  i += 1
  4.times do
    Answer.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph(10),
      question_id: i
    )
  end
end



# Drinker.create(beer_id: 1, user_id: 1)
# Rating.create(rating: 3, user_id: 1, beer_id: 1)
# Drinker.create(beer_id: 2, user_id: 1)
# Rating.create(rating: 5, user_id: 1, beer_id: 2)
# Drinker.create(beer_id: 3, user_id: 1)
# Rating.create(rating: 1, user_id: 1, beer_id: 3)
# Drinker.create(beer_id: 4, user_id: 1)
# Rating.create(rating: 2, user_id: 1, beer_id: 4)
# Drinker.create(beer_id: 5, user_id: 1)
# Rating.create(rating: 3, user_id: 1, beer_id: 5)


# Drinker.create(beer_id: 1, user_id: 2)
# Rating.create(rating: 2, user_id: 2, beer_id: 1)
# Drinker.create(beer_id: 2, user_id: 2)
# Rating.create(rating: 5, user_id: 2, beer_id: 2)
# Drinker.create(beer_id: 3, user_id: 2)
# Rating.create(rating: 5, user_id: 2, beer_id: 3)
# Drinker.create(beer_id: 4, user_id: 2)
# Rating.create(rating: 2, user_id: 2, beer_id: 4)
# Drinker.create(beer_id: 5, user_id: 2)
# Rating.create(rating: 2, user_id: 2, beer_id: 5)
