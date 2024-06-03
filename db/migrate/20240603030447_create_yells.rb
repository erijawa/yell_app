class CreateYells < ActiveRecord::Migration[7.1]
  def change
    create_table :yells do |t|
      t.string :name, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
