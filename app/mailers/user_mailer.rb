class UserMailer < ApplicationMailer

    default from: 'no-reply@jungle.com'
 
    def welcome(order,enchanced_card)
        @order = order
        @products = enchanced_card
        puts "#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{enchanced_card}"
        # puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{@order}, #{order}"
        mail(to: order.email, subject: order.id)
    end
end
