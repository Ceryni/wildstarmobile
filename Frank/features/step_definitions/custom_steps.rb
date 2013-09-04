When /^I select (\d*)(?:st|nd|rd|th)? row in picker "([^\"]*)"$/ do | 
row_index, theview| 
  selector = "view:'UIPickerView' marked:'#{theview}'" 
  row_index = row_index.to_i 
  views_switched = frankly_map( selector, 
'selectRow:inComponent:animated:', row_index, 0, false ) 
  raise "could not find anything matching [#{row_index}] to switch" if 
views_switched.empty? 
end 