class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.date :deadline
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
