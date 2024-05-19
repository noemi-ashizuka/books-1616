def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985;"
  end

  def three_recent_jules
   query = "SELECT * 
   FROM books
   JOIN authors ON books.authors_id = authors.id
   WHERE authors.name = 'Jules Vernes'
   ORDER BY books.publishing_year DESC
   LIMIT 3;"
  end
end
