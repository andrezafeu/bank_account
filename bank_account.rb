class BankAccount
  def initialize(name)
    @name = name
    @transactions = []
  end
end

bank_account = BankAccount.new("Andreza")
puts bank_account.inspect