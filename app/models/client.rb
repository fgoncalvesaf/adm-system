class Client < ApplicationRecord
    has_many :address
    has_many :sales
    accepts_nested_attributes_for :address
end
