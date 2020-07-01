class Novel < ActiveRecord::Base
  belongs_to :author, :optional => true
end
