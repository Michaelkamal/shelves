class CreateWorkSpacePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :work_space_phones do |t|
      t.references :work_space, foreign_key: true
      t.string :phone

      t.timestamps
    end
  end
end
