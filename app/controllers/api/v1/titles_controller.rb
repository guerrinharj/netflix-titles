class Api::V1::TitlesController < Api::V1::BaseController
  def index
    @titles = Title.all
  end
end
