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

title = 'haha'
release = 2017
language = 'English'
duration = 120
summary = 'Nothing'
tags = ['food', 'haha', 'first']
genres = ['action', 'comedy']
film_crew = ['me, actor', 'you, director', 'him, screenwriter']

addMovie(title, release, language, duration, summary, tags, genres, film_crew)
