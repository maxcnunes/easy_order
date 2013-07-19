class Product
  include Mongoid::Document

  field :name, type: String
  field :price, type: BigDecimal
  field :active, type: Boolean
  field :out_of_stock, type: Boolean
  field :picture_url, type: String

  belongs_to :category
end
