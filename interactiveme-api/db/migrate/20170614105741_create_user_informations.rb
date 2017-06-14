class CreateUserInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_informations do |t|
      t.string :password
      t.string :email
      t.boolean :status

      t.timestamps
    end
  end
end
