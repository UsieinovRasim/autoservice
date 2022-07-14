class CreateOrdersServicesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_services, id: false do |t|
     t.belongs_to :order
     t.belongs_to :service
   end
  end
end
