class AddComposerIdToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :composer_id, :integer
  end
end
