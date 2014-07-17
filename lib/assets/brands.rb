module Brands

  # Returns an array containing the
  # brands with the specified ID
  def self.get_by_id(id)
    self.all.select { |itm| itm[:id] == id.to_i }
  end

  # Returns an array containing the
  # brands that include the retailer
  # with the specified retailer_id
  # (Where can I buy this brand)
  def self.get_with_retailer(retailer_id)
    self.all.select { |itm| itm[:retailers].include?(retailer_id) }
  end

  # Returns an array much like the brands raw array
  # but also includes all retailers that sells
  # products from this brand. This is done through
  # a search in the Products array.
  def self.all
    with_retailers = Brands.raw.map { |brand|
      {
        :id => brand[:id],
        :retailers => Products.get_all_from_brand(brand[:id]).map { |product|
          product[:retailers].map { |retailer|
            retailer[:id]
          }
        }.flatten.uniq
      }
    }

    return Brands.raw.map { |brand|
      brand.merge(with_retailers.select{ |b| brand[:id] == b[:id] }[0])
    }
  end

  # Returns an array of all brands
  def self.raw
    [
      {
        :id => 80,
        :name => 'Sony',
      },
      {
        :id => 81,
        :name => 'Samsonite',
      },
      {
        :id => 82,
        :name => 'HTC',
      },
      {
        :id => 83,
        :name => 'Dell',
      },
      {
        :id => 84,
        :name => 'Philips',
      },
      {
        :id => 85,
        :name => 'Dr.Dre',
      }
    ]
  end

end
