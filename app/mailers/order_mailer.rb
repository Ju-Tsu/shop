class OrderMailer < ApplicationMailer
  def new_order_mail
    @order = params[:order]
    mail(to: 'mf.vadimych@gmail.com', subject: 'Поступил новый заказ из магазина')
  end
  def order_received_mail
    @order = params[:order]
    mail(to: @order.email, subject: 'Подтвердждение заказа в магазине Электрон')
  end
end
