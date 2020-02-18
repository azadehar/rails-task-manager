class Task < ApplicationRecord
  def change
    create_table :tasks do |t|
      t.string :title
      t.details :text
      t.completed :false

      t.timestamps
    end
  end
end
