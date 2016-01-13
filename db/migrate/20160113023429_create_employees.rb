class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title
      t.string :salary
      t.string :phone_number
      t.string :gender

      t.timestamps null: false
    end
  end
end
