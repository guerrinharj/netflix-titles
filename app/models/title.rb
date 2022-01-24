class Title < ApplicationRecord
  validates :show_id, presence: true
  validates :type_title, presence: true
  validates :name, presence: true
  validates :date_added, presence: true
  validates :release_year, presence: true
  validates :duration, presence: true
  validates :listed_in, presence: true
  validates :description, presence: true
end
