module Api
   module V1
      class ProductsController < ApplicationController
         def index
            products = Product.order('title DESC');
            render json: {
               status: 'SUCCESS',
               message: 'Loaded products',
               data: products
            }, status: :ok
         end
      end
   end
end