class ApiDomain
# app/lib/api_domain.rb
  def matches?(request)
    request.host == 'api.localhost'
  end
end