class User < ApplicationRecord
  attr_accessor :search_name, :search_age, :search_address

  def search
    User.ransack(name_cont: @search_name, age_eq: @search_age, address_eq: @search_address).result
  end
end
