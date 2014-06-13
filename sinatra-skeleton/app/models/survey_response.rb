class SurveyResponse < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :survey_taker, class_name: "User"
  belongs_to :survey
  has_many :question_responses

end
