class Order < ApplicationRecord
  belongs_to :item
  belongs_to :member

  validates :quantity, presence: true
  validates :expire_at, presence: true
  validates :item_id, presence: true
  validates :member_id, presence: true

  def self.active?
    Order.where(status: true)
  end

  def self.inactive?
    Order.where(status: false)
  end

  def self.expired?
    Order.where("expire_at < ?", Date.today).where(status: true)
  end

  def self.renew id
    @order = Order.where(id: id)
    @order.update(expire_at: 7.days.from_now)
  end

  def self.disable id
    @order = Order.where(id: id)
    @order.update(status: false)
  end
end
