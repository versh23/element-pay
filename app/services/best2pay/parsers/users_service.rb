class UsersService

  include HappyMapper

  tag 'b2p_user'
  element :reg_date, DateTime, tag: 'reg_date'
  element :sector, Integer, tag: 'sector'
  element :client_ref, Integer, tag: 'client_ref'
  element :state, Integer, tag: 'state'
  element :auth_state, Integer, tag: 'auth_state'
  element :active, Integer, tag: 'active'
  element :signature, String, tag: 'signature'



end