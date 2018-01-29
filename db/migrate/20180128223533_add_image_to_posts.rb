class AddImageToPosts < ActiveRecord::Migration[5.1]
  def change
    # we wanted to add a new field/column to our model/table
    add_column :posts, :image, :string
  end
end
