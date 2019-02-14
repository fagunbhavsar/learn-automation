

And(/^I view vocabulary$/) do
  on(DashboardPage).open_vcablulary
  on(VocabularyPage).search_games
end

Then(/^I see expected vocabulary sets$/) do
  actual    = on(VocabularyPage).visible_games
  expected  = @data["expected_vocabulary_sets"]
  expect(actual).to eq(expected)
end

And(/^I can search by keyword$/) do
  on(VocabularyPage).search_for(@data["search_keyword"])
end

Then(/^I filter by categories to see games created by teachers and zinc$/) do |categories|
  selection = categories.raw.map{|row| row[0].strip}
  on(VocabularyPage).filter_by_category(selection)
end

Then(/^I filter by grades to see games created by teachers and zinc$/) do |grades|
  selection = grades.raw.map{|row| row[0].strip}
  on(VocabularyPage).filter_by_grades(selection)
end

Then(/^I see games of selected grades only$/) do
  expected  = @data["expected_filtered_games"]
  actual    = on(VocabularyPage).visible_games
  expect(actual).to eq(expected)
end

Then(/^I see page "([^"]*)" of games created by "([^"]*)"$/) do |page_index, created_by|
  created_by_type = "by_#{created_by.downcase}"
  expected  = @data[created_by_type]["pages"][page_index]
  actual    = on(VocabularyPage).visible_games[created_by_type]
  expect(actual).to eq(expected)
end

When(/^I view next page of games created by "([^"]*)"$/) do |created_by|
  created_by_type = "by_#{created_by.downcase}"
  on(VocabularyPage).next_of(created_by_type)
end

When(/^I view previous page of games created by "([^"]*)"$/) do |created_by|
  created_by_type = "by_#{created_by.downcase}"
  on(VocabularyPage).previous_of(created_by_type)
end