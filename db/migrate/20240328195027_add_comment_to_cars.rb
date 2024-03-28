class AddCommentToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :comment, :string
  end
end
