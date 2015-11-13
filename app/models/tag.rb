class Tag < ActiveRecord::Base
  belongs_to :pins
  belongs_to :users
end
