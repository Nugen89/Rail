class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.string :type
      t.string :topic
      t.string :station
      t.string :line

      t.date :incident_date
      t.time :incident_time

      t.timestamps
    end
  end
end
