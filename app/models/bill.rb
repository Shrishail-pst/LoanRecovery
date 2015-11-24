class Bill < ActiveRecord::Base
belongs_to :loanrecovery
  accepts_nested_attributes_for :loanrecovery
end
