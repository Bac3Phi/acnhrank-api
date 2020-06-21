class Base < Grape::API
  format :json
  prefix :api
  mount Villagers
end