class CreateMypages < ActiveRecord::Migration[7.0]
  def change
    create_table :mypages do |t|
      t.string :nickname, null: false
      t.text :introduction, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
