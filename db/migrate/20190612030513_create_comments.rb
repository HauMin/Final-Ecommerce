class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
<<<<<<< 5544bf3b3f9d16f11b914c490dd1b0c36379c055
<<<<<<< 3d77540eb91d8c3334f1f91f37c7c0610be99d51
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
=======
      t.references :users, foreign_key: true
      t.references :products, foreign_key: true
>>>>>>> Admin Category Small_Category
=======
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
>>>>>>> Admin Products
      t.references :person_post_new, foreign_key: true

      t.timestamps
    end
  end
end
