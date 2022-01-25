class Api::V1::TitlesController < Api::V1::BaseController
  def index
    if params[:release_year].present?
      @titles = Title.where(release_year: params[:release_year]).order("release_year ASC")
    elsif params[:listed_in].present?
      @titles = Title.where(":listed_in = ANY(listed_in)", listed_in: params[:listed_in]).order("release_year ASC")
    elsif params[:country].present?
      @titles = Title.where(":country = ANY(country)", country: params[:country]).order("release_year ASC")
    else
      @titles = Title.all.order("release_year ASC")
    end
  end
end
