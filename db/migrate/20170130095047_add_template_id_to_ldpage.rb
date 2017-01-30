class AddTemplateIdToLdpage < ActiveRecord::Migration[5.0]
  def change
    add_column :ldpages, :template_id, :integer
  end
end
