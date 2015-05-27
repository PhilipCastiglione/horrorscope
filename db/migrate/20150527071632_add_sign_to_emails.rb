class AddSignToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :sign, :string
  end
end
