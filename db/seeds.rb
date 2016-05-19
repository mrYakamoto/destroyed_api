film_titles_array = [
  "45 Years",
  "Magnolia",
  "Tree of Life",
  "The Light Between the Oceans",
  "Syndecdoche, New York",
  "Revolutionary Road",
  "The Elephant Man"
]

film_titles_array.each { |title|
  puts "created #{title}" if Film.create!(title:title)
}