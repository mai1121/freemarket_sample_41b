module ApplicationHelper
  def item_price(price)
    price.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,').insert(0,'¥ ')
  end
end
