class AddClientIdToProjects < ActiveRecord::Migration
  def change
    #add_column :table_name, :column_name, :column_type, after: 'columnn_name'
    add_column :projects, :client_id, :integer
    #add_column :projects, :end_date, :date
  end
end
