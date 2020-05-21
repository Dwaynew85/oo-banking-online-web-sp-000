class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def transfer
    if sender.balance > amount
      sender.balance -= amount
      receiver.deposit(amount)
      status = "complete"
    else
      "#{sender} doesn't have enough funds"
      status = "incomplete"
  end

end
