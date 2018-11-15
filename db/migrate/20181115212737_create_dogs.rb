class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :image_url
      t.timestamps
    end
  end
end
