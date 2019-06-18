class ReviewsController < ApplicationController

    before_filter :authorize

    def create 
        id = params[:product_id]
        @review = Review.new review_params 
        @review.user_id = current_user.id
        @review.product_id = id
        if @review.save
            redirect_to product_path(id)
          else
            puts @review.errors.full_messages
            redirect_to product_path(id), notice: 'failed!!'
          end

    end
    
    def destroy
        id = params[:product_id]
        @review = Review.destroy(params[:format])
        redirect_to product_path(id)
      end

    def review_params
        params.require(:review).permit(
          :decription,
          :rating
        )
      end
end
