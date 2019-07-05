When("I visit the site") do
  visit root_path
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Given("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, content|  
  fill_in field, with: content
end

Then("show me the page") do
  save_and_open_page
end
