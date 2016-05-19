film_titles_array = [
  "45 Years",
  "Magnolia",
  "Tree of Life",
  "The Light Between the Oceans",
  "Anomalisa",
  "Syndecdoche, New York"
]

film_titles_array.each { |title| Film.create!(title:title) }