class AddSynopsisToAnimes < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :synopsis, :text
  end
end
