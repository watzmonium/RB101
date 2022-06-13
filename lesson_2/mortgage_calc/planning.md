PEDAC

P - process the problem
    INPUT - loan amount as INT
            APR as FLOAT
            DURATION as INT (months)

    OUTPUT -  monthly interest rate FLOAT
              loan duration INT (months) (convert APR to monthly)
              montly payment INT rounded


  START
  prompt user for loan amount, check validity and loop if invalid
  prompt user for apr, check and loop
  convert apr to monthly
  prompt user for duration in years, check and loop
  convert to months

  pass inputs to a function, return an int of monthly payment
  print
  ask user if they want to repeat
  END