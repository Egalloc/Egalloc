Given(/^User is on second page$/) do
        fill_in('search-bar-input', :with => "dogs")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
end

When(/^Build Collage function returns error$/) do
	fill_in('search-bar-input', :with => "fsdnffajddh")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
end

Then(/^Error message says "Insufficient number of images found"$/) do
	expect(page.find('.error-message', :visible => false).native.text).to eq "Insufficient number of images found"
end

Then(/^Text color is black$/) do
	expect(page.find('.error-message', :visible => false).native.css_value("color")).to eq "rgba(0, 0, 0, 1)"
end

Then(/^Font size is 18 pt$/) do
	expect(page.find('.error-message', :visible => false).native.css_value("font-size")).to eq "18pt"
end

Then(/^Background Color of the Second Page is White$/) do
	expect(page.find('body').native.css_value("background-color")).to eq "rgba(255, 255, 255, 1)"
end
  
Then(/^Title text is Black$/) do
	expect(page.find_by_id("collage-caption").native.css_value("color")).to eq "rgba(0, 0, 0, 1)"
end
  
Then(/^Font size of title is 24 pt or greater$/) do
	expect(page.find_by_id("collage-caption").native.css_value("font-size")).to eq "32px"
end
  	
Then(/^Title of page is "([^"]*)"$/) do |searchTerm|
	expect(page.find_by_id("collage-caption")).to eq searchTerm
end
  
Then(/^Collage is underneath the title of the page$/) do
	expect(page.find_by_id("collage-generator").native.css_value("position")).to eq "relative"
end

Then(/^Collage is centered in the page$/) do
	expect(page.find("collage-area").native.css_value("margin")).to eq "0 auto"
end

Then(/^Build Another Collage button will be located underneath the Collage$/) do
	expect(page.find_by_id("search-bar-container").native.css_value("display")).to eq "inline-block"
end
Then(/^Build Another Collage button will be slightly to the right of the center of the page$/) do
	expect(page.find_by_id("search-bar-container").native.css_value("padding")).to eq "15px 0px"
end
 
Then(/^Background color of the Build Another Collage button will be dark grey$/) do
	expect(page.find_by_id("search-bar-submit").native.css_value("background-color")).to eq "rgba(85, 85, 85, 1)"
end
   
Then(/^Text on Build Another Collage Button will be "Build Another Collage"$/) do
	expect(page.find_by_id("search-bar-submit").native.text).to eq "Build Another Collage"
end
   
Then(/^Text on Build Another Collage Button will be white$/) do
	expect(page.find_by_id("search-bar-submit").native.css_value("color")).to eq "rgba(255, 255, 255, 1)"
end
       
When(/^User clicks the Build Another Collage Button$/) do
	page.find_by_id("search-bar-submit").click()
end
=begin
Then(/^Build Collage Process is triggered$/) do
	
end
=end


When(/^Export Collage Button is clicked$/) do
	page.find_by_id("search-bar-export").click()
end

=begin
Then(/^User is able to download PNG of Collage$/) do
	
end
=end
=begin
When (/^Image is successfully exported$/) do
end

Then(/^Size of Downloaded image is the same as Currently displayed collage$/) do
end
=end

Then(/^Export Collage Buttons background color is dark grey$/) do
	expect(page.find_by_id("search-bar-export").native.css_value("background-color")).to eq "rgba(85, 85, 85, 1)"
end
	
Then(/^Export Collage Button should have the label text "Export Collage" on it$/) do
	expect(page.find_by_id("search-bar-export").native.text).to eq "Export Collage"
end
	
Then(/^Color of the text on the Export Collage Button is white$/) do
	expect(page.find_by_id("search-bar-export").native.css_value("color")).to eq "rgba(255, 255, 255, 1)"
end

Given(/^User has at least one previously built collage$/) do
	fill_in('search-bar-input', :with => "cows")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
end

=begin
Then(/^All previously built collages are available%/) do

end
=end

Then(/^The Previously Built Collages should be at the bottom of the page$/) do
	expect(page.find_by_id("saved-collages").native.css_value("position")).to eq "relative"
end

Then(/^Title of page is "Collage for topic " "dogs"$/) do
	expect(page.find_by_id("collage-caption").native.text).to eq "Collage for topic dogs"
end
=begin
Then(/^Collage in Main Space should not be the same as any of the previously shown collages$/) do
	
	expect(page.find_by_id("collage-caption")).to
end
=end
Given(/^A large amount of collages are generated$/) do
	fill_in('search-bar-input', :with => "pigs")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
	fill_in('search-bar-input', :with => "snakes")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
	fill_in('search-bar-input', :with => "lizards")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
	fill_in('search-bar-input', :with => "monkeys")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
	fill_in('search-bar-input', :with => "elephants")
	page.find_by_id("search-bar-submit").click()
	sleep(10.to_i)
	fill_in('search-bar-input', :with => "horses")
	page.find_by_id("search-bar-submit").click()
end

Then(/^Collages should be in a single horizontal row$/) do
	expect(page.find_by_id("saved-collages").native.css_value("white-space")).to eq "nowrap"
end


Then(/^A scroll bar should appear$/) do
	expect(page.find_by_id("saved-collages").native.css_value("overflow-x")).to eq "scroll"
end
       
When(/^Previously Built Collage is clicked on$/) do
	page.find_by_id("0").click()
end


Then(/^Title should include the topic of the collage that was clicked on.$/) do
	expect(page.find_by_id("collage-caption").native.text).to eq "Collage for topic dogs"
end

Then(/^Input box is to the left of the Build Another Collage button$/) do
	expect(page.find_by_id("search-bar-input").native.css_value("padding")).to eq "10px"
	expect(page.find_by_id("search-bar-container").native.css_value("padding")).to eq "15px 0px"	
end

