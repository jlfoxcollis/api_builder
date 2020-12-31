@books.each do |book|
  JSON.id book.id
  JSON.title book.title
  JSON.author book.author
  JSON.genre book.genre
  JSON.summary book.summary
  JSON.number_sold book.number_sold
  JSON.popularity book.popularity
end
