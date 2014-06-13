class CreateQuestionResponses < ActiveRecord::Migration
  def change

    create_table :question_responses do |t|
      t.integer :choice_id
      t.integer :survey_response_id

      t.timestamps
    end
  end
end
