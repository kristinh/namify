When /^(?:|I )add the names "(.*)"$/ do |names|
  step %Q{I fill in "name_list_names" with "#{names}"}
end

When /^(?:|I )want at least (\d+) names per fullname$/ do |at_least|
  step %Q{I fill in "name_list_at_least" with "#{at_least}"}
end

When /^(?:|I )want at most (\d+) names per fullname$/ do |at_most|
  step %Q{I fill in "name_list_at_most" with "#{at_most}"}
end

When /^(?:|I )add the title "([^"]*)"$/ do |title|
  step %Q{I fill in "name_list_title" with "#{title}"}
end

