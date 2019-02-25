class ChangeMembers < ActiveRecord::Migration[5.2]
  def change
    add_index :members, :CUCSID, unique:true
  end
end
