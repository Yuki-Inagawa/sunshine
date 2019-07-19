class CreateIkezakis < ActiveRecord::Migration[5.0]
  def change
    create_table :ikezakis do |t|
      t.string          :name,        null: false
      t.string          :occupation,  null: false
      t.string          :love,        null: false
      t.string          :birth1,      null: false
      t.string          :birth2,      null: false
      t.string          :birth3,      null: false
      t.string          :grand_prix,  null: false
      t.integer         :height,      null: false
      t.integer         :weight,      null: false
      t.integer         :salary,      null: false
      t.integer         :balance,     null: false
      t.integer         :password,    null: false
      t.string          :tip,         null: false
      t.timestamps
    end
  end
end
