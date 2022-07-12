class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :client

      t.timestamps
    end
  end
end
