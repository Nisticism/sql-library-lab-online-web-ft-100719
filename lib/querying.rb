def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year ASC"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN subgenres ON series.subgenre_id = subgenres.id JOIN series ON authors.id = series.author_id GROUP BY authors.name"
end

def select_series_title_with_most_human_characters
<<<<<<< HEAD
  "SELECT series.title FROM series JOIN books ON books.series_id = series.id JOIN character_books ON character_books.book_id = books.id JOIN characters ON characters.id = character_books.character_id GROUP BY series.title ORDER BY COUNT(characters.id) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(books.id) FROM characters JOIN character_books ON character_books.character_id = characters.id JOIN books ON books.id = character_books.book_id GROUP BY characters.name ORDER BY COUNT(books.id) DESC"
=======
  "SELECT title, COUNT(characters.id) FROM series GROUP BY series.title ORDER BY COUNT(characters.id) LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(books) FROM characters JOIN character_books ON character_books.character_id = characters.id, books.id = character_books.book_id GROUP BY characters.name ORDER BY COUNT(books) DESC"
>>>>>>> ebcf8ad7de5a8ce45a7128483d730427b01dc30d
end
