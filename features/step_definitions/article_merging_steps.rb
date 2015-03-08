#article_merging_steps.rb
Given /the following articles exist/ do |articles_table|
	articles_table.hashes.each do |article|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
   Article.create article
  end
  #flunk "Unimplemented"
end

When /I go to the edit page for "(.*)"/ do |article|
	id = Article.find_by_title(article).id
  visit "/admin/content/edit/#{id}" 
end

And /^I am not logged into the admin panel$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'admin'
  fill_in 'user_password', :with => 'aaaaaaaa'
  click_button 'Login'
  visit '/accounts/logout'
end