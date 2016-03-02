require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  test "transaction can display balance" do
    assert_equal 20.0, Transaction.display_balance
  end
end
