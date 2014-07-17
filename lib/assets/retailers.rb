module Retailers

  # Returns an array containing the
  # retailers with the specified ID
  def self.get_by_id(id)
    self.all.select { |itm| itm[:id] == id.to_i }
  end

  # Returns the discount (number) a certain
  # retailer has for a certain brand
  # (What is the real price after discount)
  def self.get_discount(retailer_id, brand_id)
    retailer = self.get_by_id(retailer_id)
    relevant_brand = retailer[0][:promotions].select { |promotion| promotion[:brand_id] == brand_id }

    if relevant_brand.size > 0
      return relevant_brand[0][:discount][:value]
    else
      return 0
    end
  end

  # Returns an array of all retailers
  def self.all
    [
      {
        :id => 50,
        :name => 'Johnnys Tech Store',
        :promotions => [
          {
            :brand_id => 82,
            :discount => {
              :type => '%',
              :value => 4               # All products sold here (from this brand), adds this discount.
            }
          }
        ]
      },
      {
        :id => 51,
        :name => 'MegaMart Superstore',
        :promotions => [
          {
            :brand_id => 81,
            :discount => {
              :type => '%',
              :value => 7               # All products sold here (from this brand), adds this discount.
            }
          },
          {
            :brand_id => 84,
            :discount => {
              :type => 'fixed',         # Fixed discount, rather than a percentage.
              :value => 10,             # All products sold here (from this brand), adds this discount.
              :currency => 'EUR'
            }
          }
        ]
      },
      {
        :id => 52,
        :name => 'Indie Video',
        :promotions => [
          {
            :brand_id => 80,
            :discount => {
              :type => '%',
              :value => 3               # All products sold here (from this brand), adds this discount.
            }
          },
          {
            :brand_id => 81,
            :discount => {
              :type => '%',
              :value => 5               # All products sold here (from this brand), adds this discount.
            }
          },
          {
            :brand_id => 84,
            :discount => {
              :type => '%',
              :value => 3               # All products sold here (from this brand), adds this discount.
            }
          }
        ]
      },
      {
        :id => 53,
        :name => 'Sam & Sally\'s',
        :promotions => []
      }
    ]
  end
end
