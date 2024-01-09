class ExpensesController < ApplicationController
  def index
    @expenses = current_user.expenses
  end

  def new
    @expense = current_user.expenses.build
  end

  def create
    @expense = current_user.expenses.build(expense_params)

    if @expense.save
      redirect_to expenses_path, notice: 'Expense was successfully created'
    else
      render :new
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :icon)
  end
end
