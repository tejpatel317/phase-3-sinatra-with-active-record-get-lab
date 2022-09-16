class BakedGood < ActiveRecord::Base
  belongs_to :bakery

  def self.by_price
    self.all.order(price: :desc)
  end

  def self.expensive
    by_price.first
  end
end
