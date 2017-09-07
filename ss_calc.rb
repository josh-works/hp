require 'pry'
require 'date'


class SsCalc
  attr_reader :current_income, :birthday, :claim_date, :spousal_benefits

  GROWTH_RATE = 2

  def initialize(current_income, birthday, claim_date, spousal_benefits)
    @current_income = current_income ||=  0
    @birthday = Date::strptime(birthday,"%m-%d-%Y")
    @claim_date = Date::strptime(claim_date, '%m-%d-%Y')
    @spousal_benefits = spousal_benefits ||= false
  end

  def calculate_first_check
    1016.00
    # todo: build this function out. Above amount given by SS calc
    # for test params
  end

  def benefits_base
    # take average of top 35 income-earning years
    average_income
  end

  def monthly_benefits_base
    # will probably be benefits_base / 12
  end

  def average_income
    # project back based on GROWTH_RATE to calculate top 35 income-earning years.
    # projection_base is current_age && current_income
    # add 2% growth to current_income per year, incrementing current_age until 70
    # Average top 35 years (so prob yrs 35-70)

  end

  def retirement_age(age = Date.today)
    age - birthday.year
  end

end





# Goal
# Write a function that estimates a person's first social security check.
# Implementation Details
# Develop a standalone class in Ruby.  If you would like, you are welcome to use any helper methods provided by Rails (ActiveSupport, for example).
# Arguments
# current_income: an integer value representing the person's current annual salary
#
# birthday: A date object representing the person's birthday
#
# claim_date: A date object representing the day in the future the person will choose to claim benefits
#
# spousal_benefits: A boolean representing whether or not the person wishes to collect spousal benefits
# Return
# Return a float that represents the value of the person's first social security check (this is a monthly value, not annual).
#
# We recognize that Social Security is a complex calculation, so please reach out if you have any questions the Excel sheet does not answer.
# Extra Credit
# The social security calculation relies on a person's income history, which our excel document extrapolates based on the person's current income.  Update your calculation function so it takes not only the current year's income, but also any number of income values from previous years.
