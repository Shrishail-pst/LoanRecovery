module BanksHelper
  Bank.all.collect { |m| [m.name, m.id] }
end
