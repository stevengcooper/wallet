class Transaction < ActiveRecord::Base

  def self.display_balance
    self.all.reduce(0.0) {|n,m| n + m.amount}
  end

  def self.count_processes
    self.distinct.count('date')
  end

  def self.spent_this_month
     total_for_month = 0
     self.all.each do |i|
       if (i.date.mon == Time.now.mon)
         total_for_month += i.amount
       end
     end
     total_for_month
  end



  #
  # def self.most_spent_with
  #
  #
  #
  #
  # end

end
