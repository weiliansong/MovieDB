from database.models import Movie, User, Crew, Tags, Genres

def addMovie(title, release, language, duration, summary, tags, genres, film_crew):
  movie = Movie(title=title,
                release=release,
                language=language,
                duration=duration,
                summary=summary)
  movie.save()

  mid = movie.id

  for tag in tags:
    obj = Tags(mid=mid, tags=tag.lower())
    obj.save()

  for genre in genres:
    obj = Genres(mid=mid, genres=genre.lower())
    obj.save()

  for pair in film_crew:
    name, role = [x.strip() for x in pair.split(',')]
    obj = Crew(mid=mid, name=name, role=role.lower())
    obj.save()

title = 'Fight Club'
release = 1999
language = 'English'
duration = 139
summary = 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.'
tags = ['Action Packed', 'Trippy', 'Twist Ending']
genres = ['Drama', 'Thriller']
film_crew = ['David Fincher, Director', 'Ross Grayson Bell, Producer', 'James Haygood, Editor', 'Chuck Palahniuk, Writer', 'Jared Leto, Actor', 'Helena Bonham Carter, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'There Will Be Blood'
release = 2007
language = 'English'
duration = 158
summary = 'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.'
tags = ['Intense', 'Dark', 'Suspenseful']
genres = ['Drama', 'Historical Fiction']
film_crew = ['Paul Thomas Anderson, Director', 'JoAnne Sellar, Producer', 'Dylan Tichenor, Editor', 'Upton Sinclair, Writer', 'Daniel Day-Lewis, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'The Fly'
release = 1986
language = 'English'
duration = 96
summary = 'A brilliant but eccentric scientist begins to transform into a giant man/fly hybrid after one of his experiments goes horribly wrong.'
tags = ['Gore', 'Scary']
genres = ['Horror', 'Drama']
film_crew = ['David Cronenberg, Director', 'Stuart Cornfeld, Producer', 'Ronald Sanders, Editor', 'George Langelaan, Writer', 'Jeff Goldblum, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Jurassic Park'
release = 1993
language = 'English'
duration = 127
summary = 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.'
tags = ['Awesome', 'Dinosaurs', 'Classic']
genres = ['Adventure', 'Horror']
film_crew = ['Steven Spielburg, Director', 'Kathleen Kennedy, Producer', 'Michael Khan, Editor', 'Michael Crichton, Writer', 'Jeff Goldblum, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Wolf Of Wallstreet'
release = 2013
language = 'English'
duration = 179
summary = 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.'
tags = ['Fast Paced', 'Drugs']
genres = ['Biography']
film_crew = ['Martin Scorsese, Director', 'Martin Scorsese, Producer', 'Thelma Schoonmaker, Editor', 'Jordan Belfort, Writer', 'Leonardo DiCaprio, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'The Shining'
release = 1980
language = 'English'
duration = 146
summary = 'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.'
tags = ['Crazed', 'Bloody']
genres = ['Horror', 'Suspense']
film_crew = ['Stanley Kubrick, Director', 'Stanley Kubrik, Producer', 'Ray Lovejoy, Editor', 'Stephen King, Writer', 'Jack Nicholson, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Pulp Fiction'
release = 1994
language = 'English'
duration = 154
summary = 'The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'
tags = ['Marvin', 'Say What', 'Gimp']
genres = ['Drama']
film_crew = ['Quentin Tarantino, Director', 'Lawrence Bender, Producer', 'Sally Menke, Editor', 'Quentin Tarantino, Writer', 'Bruce Willis, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Requiem For A Dream'
release = 2000
language = 'English'
duration = 102
summary = 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.'
tags = ['Gritty', 'Drugs', 'Sad']
genres = ['Drama']
film_crew = ['Darren Aronofsky, Director', 'Eric Watson, Producer', 'Jay Rabinowitz, Editor', 'Hubert Selby Jr., Writer', 'Jared Leto, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Mistic River'
release = 2003
language = 'English'
duration = 138
summary = 'With a childhood tragedy that overshadowed their lives, three men are reunited by circumstance when one has a family tragedy.'
tags = ['Suspenseful', 'Sad']
genres = ['Crime']
film_crew = ['Clint Eastwood, Director', 'Robert Lorenz, Producer', 'Joel Cox, Editor', 'Dennis Lehane, Writer', 'Tim Robbins, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'The Shawshank Redemption'
release = 1994
language = 'English'
duration = 142
summary = 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'
tags = ['Classic', 'Powerful', 'Inspiring']
genres = ['Crime']
film_crew = ['Frank Darabont, Director', 'Niki Marvin, Producer', 'Richard Francis-Bruce, Editor', 'Frank Darabont, Writer', 'Morgan Freeman, Actor', 'Tim Robbins, Andy Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'The Matrix'
release = 1999
language = 'English'
duration = 136
summary = 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.'
tags = ['Woah', 'Mind-Blowing', 'Kungfu']
genres = ['Action', 'Sci-fi']
film_crew = ['Lana Wachowski, Director', 'Lilly Wachowski, Director', 'Joel Silver, Producer', 'The Wachowski Brothers, Writer', 'Keanu Reeves, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)
title = 'The Big Lebowski'
release = 1998
language = 'English'
duration = 117
summary = '"The Dude" Lebowski, mistaken for a millionaire Lebowski, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.'
tags = ['Bowling', 'White Russian', 'Dude']
genres = ['Comedy', 'Crime', 'Mystery']
film_crew = ['Joel Cohen, Director', 'Ethan Cohen, Director', 'The Cohen Brothers, Writer', 'Ethan Cohen, Producer', 'Roderick Jaynes, Editor', 'Jeff Bridges, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Goodfellas'
release = 1990
language = 'English'
duration = 145
summary = 'Henry Hill and his friends work their way up through the mob hierarchy.'
tags = ['Brutal', 'Mafia', 'Made']
genres = ['Biography', 'Crime', 'Drama']
film_crew = ['Martin Scorsese, Director', 'Nicholas Pileggi, Writer', 'Irwin Winkler, Producer', 'Thelma Schoonmaker, Editor', 'Ray Liotta, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Terminator 2: Judgement Day'
release = 1991
language = 'English'
duration = 137
summary = 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced cyborg.'
tags = ['Boots', 'Clothes', 'Motorcycle']
genres = ['Action', 'Sci-fi', 'Thriller']
film_crew = ['James Cameron, Director', 'James Cameron, Writer', 'James Cameron, Producer', 'Mark Goldblatt, Editor', 'Arnold Schwarzenegger, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Inception'
release = 2010
language = 'English'
duration = 148
summary = 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.'
tags = ['What?', 'Effects', 'Trippy']
genres = ['Action', 'Adventure', 'Sci-fi']
film_crew = ['Christopher Nolan, Director', 'Christopher Nolan, Writer', 'Emma Thomas, Producer', 'Lee Smith, Editor', 'Leonardo DiCaprio, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Citizen Kane'
release = 1941
language = 'English'
duration = 119
summary = 'Following the death of a publishing tycoon, news reporters scramble to discover the meaning of his final utterance.'
tags = ['Rosebud', 'Classic']
genres = ['Drama', 'Mystery']
film_crew = ['Orson Welles, Director', 'Orson Welles, Writer', 'Orson Welles, Producer', 'Orson Welles, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Braveheart'
release = 1995
language = 'English'
duration = 179
summary = 'When his secret bride is executed for assaulting an English soldier who tried to rape her, Sir William Wallace begins a revolt against King Edward I of England.'
tags = ['Freedom', 'Bloody', 'Kilts']
genres = ['Biography', 'Drama', 'History']
film_crew = ['Mel Gibson, Director', 'Randall Wallace, Writer', 'Mel Gibson, Producer', 'Mel Gibson, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Gladiator'
release = 2000
language = 'English'
duration = 155
summary = 'When a Roman general is betrayed and his family murdered by an emperors corrupt son, he comes to Rome as a gladiator to seek revenge.'
tags = ['War', 'Gore', 'Rome']
genres = ['Action', 'Adventure', 'Drama']
film_crew = ['Ridley Scott, Director', 'David Franzoni, Writer', 'Douglas Wick, Producer', 'Russell Crowe, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Interstellar'
release = 2014
language = 'English'
duration = 169
summary = 'A team of explorers travel through a wormhole in space in an attempt to ensure humanitys survival.'
tags = ['Space', 'Time']
genres = ['Adventure', 'Drama', 'Sci-fi']
film_crew = ['Christopher Nolan, Director', 'Jonathan Nolan, Writer', 'Emma Thomas, Producer', 'Matthew McConaughey, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Toy Story'
release = 1995
language = 'English'
duration = 81
summary = 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boys room.'
tags = ['Family', 'Toys', 'Groundbreaking']
genres = ['Animation', 'Comedy', 'Adventure']
film_crew = ['John Lasseter, Director', 'Pete Docter, Writer', 'Bonnie Arnold, Producer', 'Tom Hanks, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Jaws'
release = 1975
language = 'English'
duration = 124
summary = 'A giant great white shark arrives on the shores of a New England beach resort and wreaks havoc with bloody attacks on swimmers, until a local sheriff teams up with a marine biologist and an old seafarer to hunt the monster down.'
tags = ['Sountrack', 'Classic', 'SHARK!']
genres = ['Adventure', 'Drama', 'Thriller']
film_crew = ['Steven Spielberg, Director', 'Peter Benchley, Writer', 'Richard D. Zanuck, Producer', 'Roy Schneider, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Apocalypse Now'
release = 1979
language = 'English'
duration = 153
summary = 'During the Vietnam War, Captain Willard is sent on a dangerous mission into Cambodia to assassinate a renegade colonel who has set himself up as a god among a local tribe.'
tags = ['Madness', 'Vietnam']
genres = ['Drama', 'War']
film_crew = ['Francis Ford Coppola, Director', 'John Milius, Writer', 'Francis Ford Coppola, Producer', 'Marlon Brondo, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Moon'
release = 2009
language = 'English'
duration = 97
summary = 'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planets power problems.'
tags = ['Space', 'Trippy', 'Clones']
genres = ['Drama', 'Mystery', 'Sci-fi']
film_crew = ['Duncan Jones, Director', 'Duncan Jones, Writer', 'Stuart Fenegan, Producer', 'Sam Rockwell, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Pans Labyrinth'
release = 2006
language = 'English'
duration = 118
summary = 'In the falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.'
tags = ['Creepy', 'Dark']
genres = ['Drama', 'Fantasy', 'War']
film_crew = ['Guillermo del Toro, Director', 'Guillermo del Toro, Writer', 'Guillermo del Toro, Producer', 'Sergi Lopez, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'The Green Mile'
release = 1999
language = 'English'
duration = 189
summary = 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.'
tags = ['Prison', 'Magic']
genres = ['Crime', 'Drama', 'Fantasy']
film_crew = ['Frank Darabont, Director', 'Stephen King, Writer', 'David Valdis, Producer', 'Tom Hanks, Actor', 'Michael Clarke Duncan, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Life of Pi'
release = 2012
language = 'English'
duration = 127
summary = 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.'
tags = ['Tiger', 'Visual', 'Beautiful']
genres = ['Adventure', 'Drama', 'Fantasy']
film_crew = ['Ang Lee, Director', 'Yann Martel, Writer', 'Gil Netter, Producer', 'Suraj Sharma, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Three Kings'
release = 1999
language = 'English'
duration = 114
summary = 'In the aftermath of the Persian Gulf War, 4 soldiers set out to steal gold that was stolen from Kuwait, but they discover people who desperately need their help.'
tags = ['War', 'Blood']
genres = ['Action', 'Adventure', 'Comedy']
film_crew = ['David O. Russell, Director', 'John Ridley, Writer', 'Charles Roven, Producer', 'Ice Cube, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Fargo'
release = 1996
language = 'English'
duration = 98
summary = 'Jerry Lundegaard's inept crime falls apart due to his and his henchmen's bungling and the persistent police work of the quite pregnant Marge Gunderson.'
tags = ['Accents', 'Brutal', 'Snow']
genres = ['Crime', 'Drama', 'Thriller']
film_crew = ['Joel Cohen, Director', 'Ethan Cohen, Director', 'The Cohen Brothers, Writer', 'Ethan Cohen, Producer', 'William H. Macy, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Oldboy'
release = 2003
language = 'Korean'
duration = 120
summary = 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.'
tags = ['Crazy', 'Brutal', 'Violent']
genres = ['Drama', 'Mystery', 'Thriller']
film_crew = ['Chan-wook Park, Director', 'Garon Tsuchiya, Writer', 'Im Seung-yong, Producer', 'Choi Min-sik, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)

title = 'Gran Torino'
release = 2008
language = 'English'
duration = 116
summary = 'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, a Hmong teenager who tried to steal Kowalskis prized possession: a 1972 Gran Torino.'
tags = ['Intense', 'Cool']
genres = ['Drama']
film_crew = ['Clint Eastwood, Director', 'Nick Schenk, Writer', 'Clint Eastwood, Producer', 'Clint Eastwood, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)
title = 'Reservoir Dogs'
release = 1992
language = 'English'
duration = 99
summary = 'After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.'
tags = ['Gritty', 'Classic', 'Soundtrack']
genres = ['Crime', 'Drama', 'Thriller']
film_crew = ['Quentin Tarantino, Director', 'Quentin Tarantino, Writer', 'Lawrence Bender, Producer', 'Harvey Keitel, Actor']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)
