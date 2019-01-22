module ApplicationHelper
  def item_price(price)
    price.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,').insert(0,'¥ ')
  end

  def select_birth_year
    range_to_select_box(1950..2018)
  end

  def select_birth_month
    range_to_select_box(01..12)
  end

  def select_birth_day
    range_to_select_box(01..31)
  end

  def range_to_select_box(range)
    initial_set = {'-' => ' '}
    select_birth_day_hash = range.to_a.map {|day| [day, day]}.to_h
    initial_set.merge(select_birth_day_hash)
  end
end
