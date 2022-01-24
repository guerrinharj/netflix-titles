class Api::V1::TitlesController < Api::V1::BaseController
  def index
    if params[:release_year].present?
      @titles = Title.where(release_year: params[:release_year])
      @param = params[:release_year]
    elsif params[:listed_in].present?
      @titles = Title.where(":listed_in = ANY(listed_in)", listed_in: params[:listed_in])
      @param = params[:listed_in]
    elsif params[:country].present?
      @titles = Title.where(":country = ANY(country)", country: params[:country])
      @param = params[:country]
    else
      @titles = Title.all
    end
  end
end
