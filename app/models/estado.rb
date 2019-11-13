class Estado < ApplicationRecord
    validates :uf, presence: true
end
