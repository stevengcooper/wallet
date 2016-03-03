require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  test "transaction can display balance" do
    assert_equal 24.0, Transaction.display_balance
  end

  test "number of transactions can be counted" do
    assert_equal 2, Transaction.count_processes
  end

  test "payee the most money has been spent with" do
    assert_equal "Criterian", Transaction.most_spent_with
  end

  test "can tell how much money you spent this month" do
    assert_equal 20.00, Transaction.spent_this_month
  end

  test "can tell how much you spent last month" do
    assert_equal 4.00, Transaction.spent_last_month
  end

  test "total transactions for this month" do
    assert_equal 2, Transaction.processes_this_month
  end

  test "total transactions last month" do
    assert_equal 1, Transactions.processes_last_month
  end
end
