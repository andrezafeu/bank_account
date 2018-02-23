class BankAccount
  attr_reader :name
  
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning balance", 0)
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
  
  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

end
  
bank_account = BankAccount.new("Andreza")
bank_account.credit("paycheck", 100)
puts bank_account.inspect
bank_account.debit("groceries", 20)
puts bank_account.inspect