module ApplicationHelper
  def active_link(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def admin_action(user)
    # if user does not have an organization
    return 'can_add' if user.organization.nil?

    # user belongs to organization
    return 'can_remove' if user.organization.id == current_user.organization.id

    # belongs to a diff org?
    return 'no_action' if user.organization.id != current_user.organization.id
  end
end
