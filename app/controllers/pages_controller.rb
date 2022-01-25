class PagesController < ApplicationController
  def home
    @categories = [
      { column: :release_year, category: "Year" },
      { column: :listed_in, category: "Genre" },
      { column: :country, category: "Country" }
    ]
  end
end
