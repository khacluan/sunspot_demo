class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.js {
        searchEngine = Sunspot.search([Post, Article]) do
          fulltext params[:keyword]
        end

        @results = searchEngine.results
      }

      format.html
    end
  end
end
