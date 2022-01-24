class Api::V1::TitlesController < Api::V1::BaseController
  def index
    if params[:release_year].present?
      @titles = Title.where(release_year: params[:release_year])
    else
      @titles = Title.all
    end
  end
end
