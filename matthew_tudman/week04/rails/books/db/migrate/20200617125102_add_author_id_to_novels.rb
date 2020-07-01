class AddAuthorIdToNovels < ActiveRecord::Migration[5.2]
  def change
    add_column :novels, :author_id, :integer
  end
end
