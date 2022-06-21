# return an array containing colors of fruits and sizes of veg
# colors capitalized, size upcased

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
new_arr = []
hsh.select do |_, info|
  if info[:type] == 'fruit'
    new_arr << info[:colors].map { |color| color.capitalize }
  else
    new_arr << info[:size].upcase
  end
end

p new_arr