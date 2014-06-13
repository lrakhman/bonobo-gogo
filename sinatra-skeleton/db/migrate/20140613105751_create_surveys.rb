class CreateSurveys < ActiveRecord::Migration
  def change

    create_table :surveys do |t|
      t.string :title
      t.string :description
      t.integer :survey_creator_id

      t.timestamps
    end
  end
end
