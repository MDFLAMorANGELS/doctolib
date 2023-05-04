class AddAttributeSpecialties < ActiveRecord::Migration[7.0]
  def change
    add_column :specialties, :name, :string
  end
end
