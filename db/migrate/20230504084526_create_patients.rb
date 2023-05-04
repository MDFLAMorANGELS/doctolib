class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
