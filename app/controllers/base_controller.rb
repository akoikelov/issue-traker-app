class BaseController < ApplicationController

  before_action :check_organization

  private

  def check_organization
    redirect_to new_organization_path unless belongs_to_organization?
  end

  def belongs_to_organization?
    unless session[:bto].nil?
      session[:bto] = if !current_user.organization.nil? || current_user.employees.count > 0
                      end
    end

    session[:bto]
  end
end