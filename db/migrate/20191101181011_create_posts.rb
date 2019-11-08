class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :price
      t.string :description
      t.string :case
      t.string :status
      t.string :longitude
      t.string :latitude
      # t.created_at.strftime("%m-%d-%Y")

      t.timestamps
    end
  end
end
