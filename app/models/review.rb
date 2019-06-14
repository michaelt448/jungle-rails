class Review < ActiveRecord::Base

    belongs_to :product

    validates :product_id,:user_id,:rating, presence: true
    validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

end

