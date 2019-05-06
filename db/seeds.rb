user1 = User.create(username: "ekos", password_digest: "1234", fullname: "Elizabeth Kosowski")
user2 = User.create(username: "mkos", password_digest: "1234", fullname: "Melody Kosowski")

movie1 = Movie.create(title: "The Princess Bride", year: 1987, poster: "https://m.media-amazon.com/images/M/MV5BMGM4M2Q5N2MtNThkZS00NTc1LTk1NTItNWEyZjJjNDRmNDk5XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_SX300.jpg", plot: "While home sick in bed, a young boy's grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.")
movie2 = Movie.create(title: "GroundHog Day", year: 1993, poster: "https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg", plot: "A weatherman finds himself inexplicably living the same day over and over again.")
movie3 = Movie.create(title: "Citizen Kane", year: 1941, poster: "https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg", plot: "Following the death of a publishing tycoon, news reporters scramble to discover the meaning of his final utterance.")

group1 = Group.create(name: "Adventure")
group2 = Group.create(name: "Rom Com")
group3 = Group.create(name: "Drama/Mystery")

user_group1 = UserGroup.create(user_id: user1.id, group_id: group1.id)
user_group2 = UserGroup.create(user_id: user1.id, group_id: group2.id)
user_group3 = UserGroup.create(user_id: user1.id, group_id: group3.id)
user_group4 = UserGroup.create(user_id: user2.id, group_id: group1.id)
user_group5 = UserGroup.create(user_id: user2.id, group_id: group2.id)

comment1 = Comment.create(content: "Vizzini dies.", user_id: user1.id, movie_id: movie1.id)
comment2 = Comment.create(content: "Phil and Rita end up together at the end.", user_id: user1.id, movie_id: movie2.id)
comment3 = Comment.create(content: "Phil becomes a better person.", user_id: user1.id, movie_id: movie2.id)
comment4 = Comment.create(content: "Rosebud is the brand of the sled.", user_id: user1.id, movie_id: movie3.id)
comment5 = Comment.create(content: "Buttercup and Wesley end up together in the end.", user_id: user2.id, movie_id: movie1.id)

movie_group1 = MovieGroup.create(movie_id: movie1.id, group_id: group1.id)
movie_group2 = MovieGroup.create(movie_id: movie2.id, group_id: group2.id)
movie_group3 = MovieGroup.create(movie_id: movie3.id, group_id: group3.id)
