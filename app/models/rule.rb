class Rule < ActiveRecord::Base
has_one :loan
has_many :bank
end
