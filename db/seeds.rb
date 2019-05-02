user1 = User.create(username: "ekos", password_digest: "1234", fullname: "Elizabeth Kosowski")
user2 = User.create(username: "mkos", password_digest: "1234", fullname: "Melody Kosowski")

movie1 = Movie.create(title: "The Princess Bride", year: 1987, poster: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5992/5992900_sa.jpg", plot: "A fairy tale adventure about a beautiful young woman and her one true love. He must find her after a long separation and save her. They must battle the evils of the mythical kingdom of Florin to be reunited with each other.")
movie2 = Movie.create(title: "GroundHog Day", year: 1993, poster: "https://is5-ssl.mzstatic.com/image/thumb/Video128/v4/2d/8f/2a/2d8f2a96-c1a6-e6e5-0d70-daec5fc23cbe/contsched.ghtuiuwg.lsr/268x0w.jpg", plot: "A cynical TV weatherman finds himself reliving the same day over and over again when he goes on location to the small town of Punxsutawney to film a report about their annual Groundhog Day. His predicament drives him to distraction, until he sees a way of turning the situation to his advantage.")
movie3 = Movie.create(title: "Citizen Kane", year: 1941, poster: "https://images-na.ssl-images-amazon.com/images/I/51YKuD%2BaM3L._SY445_.jpg", plot: "When a reporter is assigned to decipher newspaper magnate Charles Foster Kane's (Orson Welles) dying words, his investigation gradually reveals the fascinating portrait of a complex man who rose from obscurity to staggering heights. Though Kane's friend and colleague Jedediah Leland (Joseph Cotten), and his mistress, Susan Alexander (Dorothy Comingore), shed fragments of light on Kane's life, the reporter fears he may never penetrate the mystery of the elusive man's final word, Rosebud.")

group1 = Group.create(name: "Adventure")
group2 = Group.create(name: "Rom Com")
group3 = Group.create(name: "Drama/Mystery")

user_group1 = UserGroup.create(user_id: user1.id, group_id: group1.id)
user_group2 = UserGroup.create(user_id: user1.id, group_id: group2.id)
user_group3 = UserGroup.create(user_id: user1.id, group_id: group3.id)
user_group4 = UserGroup.create(user_id: user2.id, group_id: group1.id)
user_group5 = UserGroup.create(user_id: user2.id, group_id: group2.id)

comment1 = Comment.create(content: "As you wish.", user_id: user1.id, movie_id: movie1.id)
comment2 = Comment.create(content: "They end up together at the end.", user_id: user1.id, movie_id: movie2.id)
comment3 = Comment.create(content: "Rosebud is the brand of the sled.", user_id: user1.id, movie_id: movie3.id)
comment4 = Comment.create(content: "Buttercup and Wesley end up together in the end.", user_id: user2.id, movie_id: movie1.id)

movie_group1 = MovieGroup.create(movie_id: movie1.id, group_id: group1.id)
movie_group2 = MovieGroup.create(movie_id: movie2.id, group_id: group2.id)
movie_group3 = MovieGroup.create(movie_id: movie3.id, group_id: group3.id)
