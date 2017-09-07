require 'minitest/autorun'
require_relative  'ss_calc'

class SSCalcTest < Minitest::Test

  def setup
    @current_income = 25000
    @birthday = '06-01-1950'
    @claim_date = '01-01-2018'
    @spousal_benefits = false
    @person1 = SsCalc.new(@current_income, @birthday, @claim_date, @spousal_benefits)
  end

  def test_calculate_first_check
    skip
    assert_equal 1016.00, @person1.calculate_first_check
  end

  def test_claim_date_default
    person2 = SsCalc.new(@current_income, @birthday, '09-06-2017', @spousal_benefits)
    assert_equal '2017-09-06', person2.claim_date.to_s
  end

  def test_income_base
    assert_equal 37155.00, @person1.benefits_base
  end




end
