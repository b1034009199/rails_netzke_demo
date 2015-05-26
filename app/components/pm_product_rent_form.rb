# == Schema Information
#
# Table name: pm_product_rents
#
#  id                     :integer          not null, primary key
#  PM_PRODUCT_REQUISITION :string(255)
#  PM_PRODUCT_DETAILS     :text
#  PM_PRODUCT_CONFIGURE   :text
#  PM_PRODUCT_REMARKS     :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#



class PmProductRentForm < Netzke::Basepack::Form

  def configure(c)
    super
    c.model='PmProductRent'
    c.collapsible=true
    c.title='[固话配置-配置明细]'
    c.bodyPadding='5 5 0'
    c.fieldDefaults={
        labelAlign: 'top',
        msgTarget: 'side'
    }
    c.defaults={
        border: false,
        xtype: 'panel',
        flex: 1,
        layout: 'anchor'
    }
    c.layout='hbox'
    c.items=[
        {
            anchor: '-5',
            xtype: 'textarea',
            height: 400,
            grow: true,
            hide_label: true,
            name: :PM_PRODUCT_CONFIGURE
        }
    ]
    c.data_store = {auto_load: false}
  end

  action :apply do |a|
    a.icon = :tick
    a.hidden =true
  end


end