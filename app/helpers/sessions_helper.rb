module SessionsHelper
  # ensure user is contaynor employee
  def contaynor_employee?
    redirect_to root_path unless current_user.contaynor_employee?
  end

  # ensure user is contaynor employee
  def org_admin?
    redirect_to root_path unless current_user.admin?
  end
end
