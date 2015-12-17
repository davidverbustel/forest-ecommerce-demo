class AddMailshotToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :mailshot, :boolean
  end
end
