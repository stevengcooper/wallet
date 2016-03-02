class Transaction < ActiveRecord::Base

  def self.display_balance
    self.all.reduce(0.0) {|n,m| n + m.amount}
  end

  def self.count_processes
    self.distinct.count('date')
  end
end
