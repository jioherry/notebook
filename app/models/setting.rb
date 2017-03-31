class Setting < ApplicationRecord

  source "#{Rails.root}/config/application.yml"
  namespace Rails.env


end
