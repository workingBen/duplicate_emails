module AmazonSesHelper
  def display_flash
    if flash[:success].present?
      content_tag(:div, flash[:success])
    end
  end
end
