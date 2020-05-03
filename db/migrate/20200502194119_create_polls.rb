class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.text :description
      t.integer :views, default: 0
      
      t.timestamps
    end
  end
end
