class UserService
  attr_accessor :email, :first_name, :patronymic, :birth_day, :wallet

  def initialize(params= {email: 'example.cpom',first_name: 'first_name'})
    @email = params[:email]
    @first_name= params[:first_name]
    @wallet = 0.0
    @reviews = []
    @rate = 0.0
    @birth_day = DateTime.now
  end

  def chechk_rate
    rate = 0.0
    @reviews.each do |r|
      rate += r.rate
    end
    @rate = rate/@reviews.size
  end




  def add_review(r,t)
    @reviews.push ReviewService.new(rate: r,text: t)
  end

  def pay(amount=0.0)
    @wallet += amount
  end

  def create_fake_user(n=1)
    n.times do
      new_dummy_user
    end
  end


  def new_dummy_user
    create_user([

    ])
  end


  def create_user(users)

  end

  def self.all
    ua = User.all
    ua.each do |u|
    u.qr_code = "#{u.id}.png"
    end
  end
end



# ## Buisness Testing
# params = ['email@examlple.com','John','Doe']
# user = User.create(params)

