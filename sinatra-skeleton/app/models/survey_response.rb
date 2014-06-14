class SurveyResponse < ActiveRecord::Base
  belongs_to :survey_taker, class_name: "User"
  belongs_to :survey
  has_many :question_responses, dependent: :destroy

end
