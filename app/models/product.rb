class Product < ActiveRecord::Base

  validates :title, :description, :image_url, presence: true

  validates :price, numericality: {greater_than_or_equal_to: 0.01 }
#  validates :price, numericality: {less_than_or_equal_to: 1000.00}

  validates :image_url, uniqueness: true

  validates :title, uniqueness: true

  validates :image_url, allow_blank: true, format: {
           with:
           %r{\.(gif|jpg|png)$}i,
           message: 'must be a URL for GIF, JPG or PNG image.'
           }

  has_many :line_items
  has_many :orders, through: :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

 private
# ensure that there are no line items referencing this product

def ensure_not_referenced_by_any_line_item
  if line_items.empty?
    return true
   else
    errors.add(:base, 'Line Items present')
    return false
  end
end
end 