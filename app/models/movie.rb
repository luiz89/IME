class Movie < ActiveRecord::Base
  validates  :title, presence: true
  validates  :title, uniqueness: {scope: :release_date,
  message: "should not have two movies with same name and release_date"}

  has_many :classifications
  has_many :users, through: :classifications

#  belongs_to :director, class_name: "Director", foreign_key: "director_id",,
#  optional:true

  has_and_belongs_to_many :actors, association_foreign_key: 'actor_id',
  join_table:'actors_movies'


  def average_score
    classifications.average(:score).to_f    
  end
end
