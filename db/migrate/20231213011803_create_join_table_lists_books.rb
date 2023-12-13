class CreateJoinTableListsBooks < ActiveRecord::Migration[7.0]
  def change
    create_join_table :lists, :books do |t|
      # t.index [:list_id, :book_id]
      # t.index [:book_id, :list_id]
    end
  end
end
