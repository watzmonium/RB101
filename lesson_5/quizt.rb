=begin
arr = [
  {one: '1', two: 2},
  [{four: 5, three: 6}, :three],
  :three,
  {2=>:two, 3=>:three}
]

p arr[1][0][:three]

p arr[1][1]

p arr[2]

p arr[3][3]

todo[1][:todos][both][:completed] = true
=end
order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, 
    order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, 
    order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, 
    order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, 
    order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, 
    order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]
temp_orders = {}
order_data.map do |row|
  temp_orders[row] = {
    customer_id: row[:customer_id]
  }
end

p temp_orders