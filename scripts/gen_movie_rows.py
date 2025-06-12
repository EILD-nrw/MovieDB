import random
from datetime import datetime, timedelta

genres = list(range(1, 11))  # 10 Genres
certificates = [0, 6, 12, 16, 18]
distributors = ["Warner", "Universal", "Sony", "Paramount", "Disney", "Netflix", "Amazon"]
titles = ["Eclipse", "Revenge", "Awakening", "Chronicles", "Legacy", "Origins", "Empire", "Rise", "Fall", "Echoes"]

def random_date(start_year=1980, end_year=2024):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    return start + timedelta(days=random.randint(0, (end - start).days))

def generate_insert(movie_id):
    title = f"{random.choice(titles)} {random.randint(1, 999)}"
    release_date = random_date().strftime("TO_DATE('%Y-%m-%d','YYYY-MM-DD')")
    genre_id = random.choice(genres)
    budget = random.randint(1_000_000, 300_000_000)
    opening = random.randint(500_000, budget)
    profit = random.randint(-50_000_000, 500_000_000)
    runtime = random.randint(80, 180)
    certificate = random.choice(certificates)
    sequel_of = "NULL" if movie_id == 1 or random.random() < 0.8 else str(random.randint(1, movie_id - 1))
    distributor = random.choice(distributors)
    s = f"INSERT INTO Movies (Movie_ID, Title, ReleaseDate, Genre_ID, Budget, OpeningWeek, Profit, " 
    s += f"Runtime, Certificate, SequelOf, Distribution) VALUES " 
    s += f"({movie_id}, '{title}', {release_date}, {genre_id}, {budget}, {opening}, {profit}, " 
    s += f"{runtime}, {certificate}, {sequel_of}, '{distributor}');"
    return s
  

def save():
    insert_statements = [generate_insert(i + 10000) for i in range(1, 10001)]
    with open("insert_movies.sql", "w") as f:
        f.write("\n".join(insert_statements))

if __name__ = '__main__':
    save()
