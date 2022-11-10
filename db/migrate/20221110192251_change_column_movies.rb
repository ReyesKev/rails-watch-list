class ChangeColumnMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :url
    remove_column :movies, :poster
    add_column :movies, :poster_url, :string
  end
end
