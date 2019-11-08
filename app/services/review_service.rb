class ReviewService
  attr_accessor :rate, :text
  def initialize(params = {rate: 5,text: 'texzt'})
    @rate = params[:rate]
    @text = params[:text]
end
end