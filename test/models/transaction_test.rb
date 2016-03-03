require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  test "transaction can display balance" do
    assert_equal 20.0, Transaction.display_balance
  end

  test "number of transactions can be counted" do
    assert_equal 2, Transaction.count_processes
  end

  test "payee the most money has been spent with" do
    assert_equal "Criterian", Transaction.most_spent_with
  end
end
