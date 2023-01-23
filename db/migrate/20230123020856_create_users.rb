class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
