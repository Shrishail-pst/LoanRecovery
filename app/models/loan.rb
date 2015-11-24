class Loan < ActiveRecord::Base
belongs_to :bank
belongs_to :rule
has_many :loanrecovery
end
