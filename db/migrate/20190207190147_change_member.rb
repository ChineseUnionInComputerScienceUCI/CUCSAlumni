class ChangeMember < ActiveRecord::Migration[5.2]
  def change
    add_index :members, :userName, unique:true
  end
end
