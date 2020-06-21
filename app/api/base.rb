class Base < Grape::API
  format :json

  
  mount VillagerAPI
end