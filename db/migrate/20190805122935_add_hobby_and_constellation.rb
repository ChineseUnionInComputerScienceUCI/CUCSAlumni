class AddHobbyAndConstellation < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :chineseName
      t.string :englishName
      t.string :email
      t.string :wechatId
      t.string :userName, unique: true
      t.string :password
      t.string :graduateYear
      t.string :currentCompany
      t.string :degree
      t.string :bornYear
      t.string :image
      t.string :linkedIn
      t.string :constellation
      t.string :hobby
      t.string :CUCSID, unique: true
      t.timestamps
    end
  end

end
