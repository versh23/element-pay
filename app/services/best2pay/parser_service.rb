class ParserService
  attr_accessor :order, :user

  def initialize(params = {})
    @user = params[:user] if params[:user]
    @order = params[:order] if params[:order]
end

  

  def self.user(path = "./tmp/user.xml")
    file = File.read(path)
    user = UsersService.parse(file)
    new(user: user)

  end

  def self.order(path = "./tmp/order.xml")
    file = File.read(path)
    user = OrdersService.parse(file)
    new(order: order)

  end
end