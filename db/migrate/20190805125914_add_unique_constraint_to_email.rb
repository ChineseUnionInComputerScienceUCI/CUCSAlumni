class AddUniqueConstraintToEmail < ActiveRecord::Migration[5.2]
 def change
    create_table :members do |t|
      t.string :chineseName
      t.string :englishName
      t.string :email, unique:true
      t.string :wechatId
      t.string :password
      t.string :graduateYear
      t.string :currentCompany
      t.string :degree
      t.string :image
      t.string :linkedIn
      t.string :constellation
      t.string :hobby
      t.string :CUCSID, unique: true
      t.timestamps
    end
  end


end
