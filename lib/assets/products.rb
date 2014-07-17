module Products

  # Returns an array containing the
  # products with the specified ID
  def self.get_by_id(id)
    self.all.select { |itm| itm[:id] == id.to_i }
  end

  # Returns an array containing the
  # products from a certain brand
  def self.get_all_from_brand(brand_id)
    self.all.select { |itm| itm[:brand] == brand_id }
  end

  # Returns an array containing the
  # products where a retailer exists with
  # a certain ID (all products found at a retailer)
  def self.get_all_from_retailer(retailer_id)
    self.all.select { |itm| itm[:retailers].any? { |retailer| retailer[:id] == retailer_id } }
  end

  # Returns an array of all products
  def self.all
    [
      {
        :id => 10,
        :name => 'Flatscreen TV 32" HD',
        :price => 3399,
        :currency => 'EUR',
        :brand => 80,
        :retailers => [
          {
            :id => 50,
            :discount => 10                   # This retailer has this additional discount for this product.
          },
          {
            :id => 51,
            :discount => 12                   # This retailer has this additional discount for this product.
          }
        ]
      },
      {
        :id => 11,
        :name => 'Toaster 3000 MX',
        :price => 12.90,
        :currency => 'EUR',
        :brand => 80,
        :retailers => [
          {
            :id => 50,
            :discount => 0                   # This retailer has this additional discount for this product.
          },
          {
            :id => 51,
            :discount => 10                   # This retailer has this additional discount for this product.
          },
          {
            :id => 52,
            :discount => 7                   # This retailer has this additional discount for this product.
          },
        ]
      },
      {
        :id => 12,
        :name => 'Laptop bag 17" Forester ed.',
        :price => 112,
        :currency => 'EUR',
        :brand => 81,
        :retailers => [
          {
            :id => 51,
            :discount => 10                   # This retailer has this additional discount for this product.
          },
          {
            :id => 52,
            :discount => 7                   # This retailer has this additional discount for this product.
          },
        ]
      },
      {
        :id => 13,
        :name => '24" LCD Monitor',
        :price => 229,
        :currency => 'EUR',
        :brand => 83,
        :retailers => [
          {
            :id => 50,
            :discount => 12                   # This retailer has this additional discount for this product.
          },
          {
            :id => 51,
            :discount => 11                   # This retailer has this additional discount for this product.
          },
          {
            :id => 52,
            :discount => 0                   # This retailer has this additional discount for this product.
          }
        ]
      },
      {
        :id => 14,
        :name => 'Tablet protection film 7"',
        :price => 19,
        :currency => 'EUR',
        :brand => 83,
        :retailers => [
          {
            :id => 50,
            :discount => 0                   # This retailer has this additional discount for this product.
          },
          {
            :id => 53,
            :discount => 0                   # This retailer has this additional discount for this product.
          }
        ]
      },
      {
        :id => 15,
        :name => '4WD Cross Country terrain bike',
        :price => 8490,
        :currency => 'EUR',
        :brand => 84,
        :retailers => [
          {
            :id => 51,
            :discount => 5                   # This retailer has this additional discount for this product.
          },
          {
            :id => 53,
            :discount => 8                   # This retailer has this additional discount for this product.
          }
        ]
      },
      {
        :id => 16,
        :name => 'Golden neck chain',
        :price => 319,
        :currency => 'EUR',
        :brand => 85,
        :retailers => [
          {
            :id => 52,
            :discount => 3                   # This retailer has this additional discount for this product.
          },
          {
            :id => 53,
            :discount => 4                   # This retailer has this additional discount for this product.
          }
        ]
      },
      {
        :id => 17,
        :name => 'Used HTC Hero Classic edition',
        :price => 40,
        :currency => 'EUR',
        :brand => 82,
        :retailers => [
          {
            :id => 50,
            :discount => 3                   # This retailer has this additional discount for this product.
          },
          {
            :id => 52,
            :discount => 3                   # This retailer has this additional discount for this product.
          }
        ]
      }
    ]
  end

end
