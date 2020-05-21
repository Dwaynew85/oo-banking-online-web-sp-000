class BankAccount
  attr_accessor :name, :account, :balance, :status

  def initialize(name, account)
  @account = account
  @name = name
  @balance = 1000
  @status = "open"
  end

end
