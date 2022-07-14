class CreateExecutorsServicesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :executors_services, id: false do |t|
     t.belongs_to :service
     t.belongs_to :executor
    end
  end
end
