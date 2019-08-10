class AddColumnToIkezakis < ActiveRecord::Migration[5.0]
  def change
    add_column :ikezakis, :sex, :string
  end
end
