require 'minitest/autorun'
require_relative  'ss_calc'

class SSCalcTest < Minitest::Test

  def setup
    @current_income = 25000
    @birthday = '06-01-1950'
    @claim_date = '01-2018'
    @spousal_benefits = false
  end

  def test_calculate_first_check
    person1 = SsCalc.new(@current_income, @birthday, @claim_date, @spousal_benefits)
    assert_equal 1016.00, person1.calculate_first_check
  end

end
