class Bank < ActiveRecord::Base
	  has_many :loanrecovery
	  has_many :loan
	  belongs_to :rule
end
