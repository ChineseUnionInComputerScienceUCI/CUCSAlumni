class CreateCucsids < ActiveRecord::Migration[5.2]
  def change
    create_table :cucsids do |t|
      
      t.timestamps
    end
  end
end
