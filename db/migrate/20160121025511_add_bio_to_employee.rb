class AddBioToEmployee < ActiveRecord::Migration
  def change
    change_table :employees do |t|
      t.text :bio 
    end
  end
end
