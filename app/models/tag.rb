class Tag < ActiveRecord::Base
  belongs_to :pin
  belongs_to :user
  belongs_to :caption
end
