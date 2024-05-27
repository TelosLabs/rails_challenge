class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :subject
      t.datetime :start_date
      t.datetime :end_date
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
