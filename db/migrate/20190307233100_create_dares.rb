class CreateDares < ActiveRecord::Migration[5.2]
  def change
    create_table :dares do |t|
      t.string :content
    end
  end
end
