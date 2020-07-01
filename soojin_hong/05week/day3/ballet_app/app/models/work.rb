class Work < ActiveRecord::Base
  belongs_to :composer, :optional => true
end
