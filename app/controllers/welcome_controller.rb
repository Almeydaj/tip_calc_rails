class WelcomeController < ApplicationController
  def index
  end

  def calc
    @amount = params[:amount].to_f
    @percent = params[:percent].to_f
    @people = params[:people].to_f

    begin
      @tip = TipCalculator.tipcalc(@amount, @percent)
      @newamount = TipCalculator.newamount(@amount, @tip)
      @person = TipCalculator.person(@newamount, @people)
    end
  end
end
