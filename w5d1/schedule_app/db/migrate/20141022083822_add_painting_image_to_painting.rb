class AddPaintingImageToPainting < ActiveRecord::Migration
  def change
    add_column :paintings, :painting, :text
    
  end
end
