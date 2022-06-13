require 'yaml'
MESSAGES = YAML.load_file('messages.yml')
LANGUAGE = 'en'

# calculates total monthly payment
def calculate_mortgage(loan, apr, duration)
  loan * (apr / (1 - (1 + apr)**(-duration)))
end

# adds a propmt to messages that require input
def prompt(in_msg)
  print "=> #{in_msg}"
end

# accesses the hash of messages
def message(msg_name, lang = 'en')
  MESSAGES[lang][msg_name]
end

# uses regex to determine if string is a valid int
def integer?(instring)
  /^-?\d+$/.match(instring)
end

# uses regex to determine if string is a valid float
def float?(instring)
  /^-?\d+[.]\d+$/.match(instring)
end

# main program
loop do
  puts message('welcome', LANGUAGE)

  # asks user for total loan amount and verifies input
  loan_amount = nil
  loop do
    puts prompt(message('loanmsg', LANGUAGE))
    loan_amount = gets.chomp
    break if integer?(loan_amount)

    puts message('invalid_i')
  end

  # asks user for APR as a decimal and verifies input
  yearly_apr = nil
  loop do
    puts prompt(message('aprmsg', LANGUAGE))
    yearly_apr = gets.chomp
    break if float?(yearly_apr)

    puts message('invalid_f')
  end

  # asks user for duration in years and verifies input
  duration_years = nil
  loop do
    puts prompt(message('durationmsg', LANGUAGE))
    duration_years = gets.chomp
    break if integer?(duration_years)
    puts message('invalid_i')
  end

  # converts strings to numbers and in the correct format for equation
  loan_amount = loan_amount.to_i
  duration_months = duration_years.to_i * 12
  monthly_apr = yearly_apr.to_f / 1200
  
  monthly_payment = calculate_mortgage(loan_amount, monthly_apr, duration_months)

  puts "Your monthly payment will be #{monthly_payment.round(2)} with a 
  montly rate of #{monthly_apr.round(4)} to be paid back over #{duration_months} months."

  # prompts user to repeat program
  puts prompt(message('loopmsg', LANGUAGE))
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end
