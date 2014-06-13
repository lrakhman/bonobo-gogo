class CreateSurveyResponses < ActiveRecord::Migration
  def change

    create_table :survey_responses do |t|
      t.integer :survey_id
      t.integer :user_id
      t.boolean :completed

      t.timestamps
    end
  end
end
