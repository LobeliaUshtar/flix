Movie.create!([
	{
		title: 'Iron Man',
		description: 
		%{
			When wealthy industrialist Tony Stark is forced to build an 
			armored suit after a life-threatening incident, he ultimately 
			decides to use its technology to fight against evil.
		}.squish,
		image_file_name: 'ironman.jpg',
		cast: 'Robert Downey Jr., Gwyneth Paltrow and Terrence Howard',
		released_on: "2008-05-02",
		duration: '126 min',
		director: 'Jon Favreau',
		rating: 'PG-13',
		total_gross: 318_412_101
	},
	{
		title: 'Superman',
		description: 
		%{
			An alien orphan is sent from his dying planet to Earth, where 
			he grows up to become his adoptive home's first and greatest 
			super-hero.
		}.squish,
		image_file_name: 'superman.jpg',
		cast: 'Christopher Reeve, Margot Kidder and Gene Hackman',
		released_on: "1978-12-15",
		duration: '143 min',
		director: 'Richard Donner',
		rating: 'PG',
		total_gross: 134_218_018
	},
	{
		title: 'Spider-Man',
		description: 
		%{
			When bitten by a genetically modified spider, a nerdy, shy, and 
			awkward high school student gains spider-like abilities that he 
			eventually must use to fight evil as a superhero after tragedy 
			befalls his family.
		}.squish,
		image_file_name: 'spiderman.jpg',
		cast: 'Tobey Maguire, Kirsten Dunst and Willem Dafoe',
		released_on: "2002-05-03",
		duration: '121 min',
		director: 'Sam Raimi',
		rating: 'PG-13',
		total_gross: 403_706_375
	},
	{
		title: 'Batman',
		description: 
		%{
			The Dark Knight of Gotham City begins his war on crime with his 
			first major enemy being the clownishly homicidal Joker.
		}.squish,
		image_file_name: 'batman.jpg',
		cast: 'Michael Keaton, Jack Nicholson and Kim Basinger',
		released_on: "1989-06-23",
		duration: '126 min',
		director: 'Tim Burton',
		rating: 'PG-13',
		total_gross: 251_188_924
	},
	{
		title: "Catwoman",
		description: 
		%{
			Patience Philips seems destined to spend her life apologizing for taking up space. 
			Despite her artistic ability&mdash;she has a more than respectable career as a graphic 
			designer.
		}.squish,
		image_file_name: "catwoman.jpg",
		cast: "Halle Berry, Sharon Stone and Benjamin Bratt",
		released_on: "2004-07-23",
		duration: "101 min",
		director: "Jean-Christophe 'Pitof' Comar",
		rating: "PG-13",
		total_gross: 40_200_000
	},
	{
		title: 'Batman vs. Godzilla',
		description: 
		%{
			An epic battle between The Caped Crusader and the fire-breathing dinosaur Gojira.
			Hang on to your popcorn, kids!
		}.squish,
		image_file_name: 'batman-vs-godzilla.jpg',
		cast: 'Bruce Wayne, Gojira',
		released_on: 370.days.from_now,
		duration: '211 min',
		director: 'Ishiro Honda',
		rating: 'PG-13',
		total_gross: 0
	}
])

User.create!([
	{
		name: "Gabby",
		email: "gabby@example.com",
		username: "gabby",
		password: "secret",
		password_confirmation: "secret",
		admin: true
	},
	{
		name: "Roger Ebert",
		email: "roger@example.com",
		username: "roger",
		password: "secret",
		password_confirmation: "secret"
	},
	{
		name: "Gene Siskel",
		email: "gene@example.com",
		username: "gene",
		password: "secret",
		password_confirmation: "secret"
	},
	{
		name: "Peter Travers",
		email: "peter@example.com",
		username: "peter",
		password: "secret",
		password_confirmation: "secret"
	},
	{
		name: "Elvis Mitchell",
		email: "elvis@example.com",
		username: "elvis",
		password: "secret",
		password_confirmation: "secret"
	}
])

roger = User.find_by(name: "Roger Ebert")
gene = User.find_by(name: "Gene Siskel")
peter = User.find_by(name: "Peter Travers")
elvis = User.find_by(name: "Elvis Mitchell")

action = Genre.create!(name: "Action")
comedy = Genre.create!(name: "Comedy")
drama = Genre.create!(name: "Drama")
romance = Genre.create!(name: "Romance")
thriller = Genre.create!(name: "Thriller")
fantasy = Genre.create!(name: "Fantasy")
documentary = Genre.create!(name: "Documentary")
adventure = Genre.create!(name: "Adventure")
animation = Genre.create!(name: "Animation")
scifi = Genre.create!(name: "Sci-Fi")

movie = Movie.find_by(title: 'Iron Man')
movie.reviews.create!(user: roger, stars: 3, comment: "I laughed, I cried, I spilled my popcorn!")
movie.reviews.create!(user: gene, stars: 5, comment: "I'm a better reviewer than he is.")
movie.reviews.create!(user: peter, stars: 4, comment: "It's been years since a movie superhero was this fierce and this funny.")
movie.fans << roger
movie.fans << gene
movie.fans << elvis
movie.genres = [action, adventure, scifi]

movie = Movie.find_by(title: 'Superman')
movie.reviews.create!(user: elvis, stars: 5, comment: "It's a bird, it's a plane, it's a blockbuster!")
movie.genres = [action, fantasy, scifi]

movie = Movie.find_by(title: 'Spider-Man')
movie.genres = [action, fantasy]

movie = Movie.find_by(title: 'Batman')
movie.genres = [action, thriller]

movie = Movie.find_by(title: 'Catwoman')
movie.genres = [action, fantasy]