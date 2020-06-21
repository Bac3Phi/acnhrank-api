class Villagers < Grape::API
  version 'v1', using: :path
  
  resource :villagers do
    desc 'Lấy ra những con ciu'
    get do
      @villagers = Villager.all
      present @villagers, with: VillagerFormat
    end
  end

  # resource :products do
  #   desc 'Get list products'
  #   get do
  #     @products = Product.all
  #     present @products, with: Entities::V1::ProductFormat
  #   end

  #   desc 'Create product'
  #   params do
  #     requires :name, type: String
  #     requires :quantity, type: Integer
  #     requires :price, type: Integer
  #   end
  #   post do
  #     @product = Product.create!(params)
  #     present @product, with: Entities::V1::ProductFormat
  #   end

  #   route_param :id do
  #     before do
  #       @product = Product.find(params[:id])
  #     end

  #     desc 'Show a product'
  #     get do
  #       @product
  #       present @product, with: Entities::V1::ProductFormat
  #     end

  #     desc 'Update a product'
  #     params do
  #       requires :id, type: Integer
  #       requires :name, type: String
  #       requires :quantity, type: Integer
  #       requires :price, type: Integer
  #     end
  #     patch do
  #       @product.update(params)
  #       present @product, with: Entities::V1::ProductFormat
  #     end

  #     desc 'Delete a product'
  #     params do
  #       requires :id, type: String
  #     end
  #     delete do
  #       @product.destroy
  #     end
  #   end
  # end
end
