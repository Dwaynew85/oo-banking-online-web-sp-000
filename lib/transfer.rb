class BankAccount
  attr_accessor :name, :account, :balance

  def initialize(name, account)
  @account = account
  @name = name
  @balance = 1000
  end

end
