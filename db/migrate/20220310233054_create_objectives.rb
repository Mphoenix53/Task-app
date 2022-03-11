class CreateObjectives < ActiveRecord::Migration[7.0]
  def change
    create_table :objectives do |t|
      t.string :name
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
