Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  mount API::V1::Base, at: "/"
  mount GrapeSwaggerRails::Engine => '/docs'



end
