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

class PmProductRent < ActiveRecord::Base
end
