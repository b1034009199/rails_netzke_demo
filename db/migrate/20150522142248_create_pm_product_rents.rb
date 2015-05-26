class CreatePmProductRents < ActiveRecord::Migration
  def change
    create_table :pm_product_rents do |t|
      t.string :PM_PRODUCT_REQUISITION
      t.text :PM_PRODUCT_DETAILS
      t.text :PM_PRODUCT_CONFIGURE
      t.string :PM_PRODUCT_REMARKS

      t.timestamps
    end
  end
end
