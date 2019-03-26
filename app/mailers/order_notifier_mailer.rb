class OrderNotifierMailer < ApplicationMailer
  default from: "Sam Ruby <depot@example.com>"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
  def received (order)
    @greeting = "Hi, "

    @order = order


    mail to: order.email, subject: 'Подтверждение заказа в Jinn\'s Magical Store'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
  def shipped (order)
    @greeting = "Hi, "

    @order = order

    mail to: order.email, subject: 'Заказ из Jinn\'s Magical Store успешно отправлен'
  end
end
