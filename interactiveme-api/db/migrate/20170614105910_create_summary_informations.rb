class CreateSummaryInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :summary_informations do |t|
      t.string :content
      t.references :user_information, foreign_key: true

      t.timestamps
    end
  end
end
