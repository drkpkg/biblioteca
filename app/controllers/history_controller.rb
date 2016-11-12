class HistoryController < ApplicationController
  def list_all
    @lhistories = LoanHistory.includes(:user,:book).where(user_id: current_user)
  end
end
