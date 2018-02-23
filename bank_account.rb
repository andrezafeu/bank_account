class BankAccount
  attr_reader :name
  
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning balance", 0)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

end
  
bank_account = BankAccount.new("Andreza")
puts bank_account.inspect
bank_account.add_transaction("groceries", 20)
puts bank_account.inspect