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

  def self.spent_last_month
    total_for_month_prior = 0
     self.all.each do |i|
      if (i.date.mon == Time.now.mon - 1)
       total_for_month_prior += i.amount
      end
    end
    total_for_month_prior
  end

  def self.processes_this_month
    total = self.all.select {|d| d.date.mon == Time.now.mon}
    total.length
  end

  def self.processes_last_month
    total = self.all.select {|d| d.date.mon == Time.now.mon - 1}
    total.length
  end

  def self.biggest_expense
    all_amounts = self.all.map {|m| m.amount}
    all_amounts.max
  end


  def self.biggest_expense_this_month
     biggest_expense_this_month = []
     self.all.each do |t|
       biggest_expense_this_month << t.amount if (Time.now.mon == t.date.mon)
     end
     biggest_expense_this_month.max
   end
end
