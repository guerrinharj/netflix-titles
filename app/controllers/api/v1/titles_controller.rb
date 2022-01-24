class Api::V1::TitlesController < Api::V1::BaseController
  def index
    if params[:release_year].present?
      @titles = Title.where(release_year: params[:release_year])
    elsif params[:listed_in].present?
      @titles = Title.where(listed_in: params[:listed_in])
    elsif params[:country].present?
      @titles = Title.where(listed_in: params[:country])
    else
      @titles = Title.all
    end
  end
end
