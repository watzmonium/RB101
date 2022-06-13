require 'yaml'
MESSAGES = YAML.load_file('messages.yml')
LANGUAGE = 'en'.freeze

# calculates total monthly payment
def calculate_mortgage(loan, apr, duration)
  loan * (apr / (1 - (1 + apr)**-duration))
end

# adds a propmt to messages that require input
def prompt(in_msg)
  print "=> #{in_msg}"
end

# accesses the hash of messages
def message(msg_name, lang = 'en')
  MESSAGES[lang][msg_name]
end

# this function takes inputs for the right message and opeation type to
# prompt the user for a number and return a valid number if it is valid
def input_number(message, lang, num = 'i')
  loop do
    puts prompt(message(message, lang))
    in_num = gets.chomp
    if num == 'i'
      return in_num.to_i if integer?(in_num)

      puts message('invalid_i')
    else
      return in_num.to_f if float?(in_num)

      puts message('invalid_f')
    end
  end
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
  loan_amount = input_number('loanmsg', LANGUAGE)

  # asks user for APR as a decimal and verifies input
  yearly_apr = input_number('aprmsg', LANGUAGE, 'f')

  # asks user for duration in years and verifies input
  duration_years = input_number('durationmsg', LANGUAGE)

  # converts strings to numbers and in the correct format for equation
  duration_months = duration_years * 12
  monthly_apr = yearly_apr / 1200

  monthly_payment = calculate_mortgage(loan_amount, monthly_apr, duration_months)

  puts "Your monthly payment will be #{monthly_payment.round(2)}."
  puts "Your montly rate is #{monthly_apr.round(4)}."
  puts "Paid back over #{duration_months} months."

  # prompts user to repeat program
  puts prompt(message('loopmsg', LANGUAGE))
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end
