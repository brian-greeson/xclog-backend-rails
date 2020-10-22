class AddFileUrLtoFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :fileurl, :string
  end
end
