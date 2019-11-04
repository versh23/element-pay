class OrdersService
  include HappyMapper
  tag 'order'
  element :id, Integer, tag: 'id'
  element :date, DateTime, tag: 'date'
  element :amount, Integer, tag: 'amount'
  element :currency, Integer, tag: 'currency'
  element :inprogress, Integer, tag: 'inprogress'
  element :url, String, tag: 'url'
  element :failurl, String, tag: 'failurl'
  element :state, String, tag: 'state'
  element :reference, String, tag: 'reference'
  element :description, String, tag: 'description'
  element :signature, String, tag: 'signature'

end