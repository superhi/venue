class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    # this was auto created by rails generate model posts
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
