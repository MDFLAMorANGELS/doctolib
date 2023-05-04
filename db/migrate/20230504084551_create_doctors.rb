class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
