module HarsHelper
	def resource_name
    :employe
  end

  def resource
    @resource ||= Employe.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:employe]
  end
end
