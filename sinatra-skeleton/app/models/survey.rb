class Survey < ActiveRecord::Base
  has_many :questions
  belongs_to :survey_creator, class_name: "User"
  has_many :survey_responses
  has_many :survey_takers, through: :survey_responses, source: :user_id

end
