When /^(?:|I )add the names "(.*)"$/ do |names|
  step %Q{I fill in "name_list_names" with "#{names}"}
end

When /^(?:|I )add the name "([^"]*)"$/ do |names|
end

When /^(?:|I )add the title "([^"]*)"$/ do |title|
  step %Q{I fill in "name_list_title" with "#{title}"}
end

