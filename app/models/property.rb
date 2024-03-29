class Property < ApplicationRecord
    belongs_to :account

    scope :latest, -> { order created_at: :desc }

    scope :sold, -> { where(for_sale: true, status: "sold") }
    scope :for_sale, -> { where(for_sale: true, status: "sale") }
    scope :leased, -> { where(for_sale: false, status: "leased") }
    scope :for_rent, -> { where(for_sale: false, status: "rent") }
    
end