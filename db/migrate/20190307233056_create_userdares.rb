class CreateUserdares < ActiveRecord::Migration[5.2]
  def change
    create_table :userdares do |t|
      t.integer :user_id
      t.integer :dare_id
    end
  end
end
