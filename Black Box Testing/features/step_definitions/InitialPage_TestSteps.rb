    Given(/^User has navigated to localhost$/) do
        visit "http://localhost:8080/Egalloc/firstpage.jsp"
    end
       
    Given(/^User is on Initial Page$/) do
        #Nothing, since localhost automatically redirects to initial page
    end

    Then(/^Background Color of page is light gray$/) do
	expect(page.find('body').native.css_value("background-color")).to eq "rgba(136, 136, 136, 1)"
    end
    Then(/^Outline of input box is dark gray$/) do
	expect(page.find_by_id("search-bar-input").native.css_value('border-color')).to eq "rgb(85, 85, 85)"
    end

    Then(/^Input box is centered in the middle of the page$/) do
	expect(page.find_by_id("search-bar-container").native.css_value("top")).to eq "50%"
	expect(page.find_by_id("search-bar-container").native.css_value("left")).to eq "50%"
    end
   
    Then(/^Background color of input box is white$/) do
	expect(page.find_by_id("search-bar-input").native.css_value('background-color')).to eq "rgba(255, 255, 255, 1)"
    end
   
    When(/^User enters text "([^"]*)" in input box$/) do |searchArg|
	fill_in('search-bar-input', :with => searchArg)
    end
   
    Then(/^Prompt text disappears$/) do
    	page.find_by_id("search-bar-input").native.text.clear
    end
   
    When(/^User presses enter key$/) do
    	  find_field("search-bar-input").native.send_key(:enter)
    end
=begin
    Then(/^Build Collage process is triggered$/)
    public void build_collage_process_is_triggered() throws Throwable {
       
    }
=end
    Then(/^The button is labeled with 'Build Collage'$/) do
	expect(page.find_by_id("search-bar-submit").native.text).to eq "Build Collage"
    end
   
    Then(/^Text color of Build Collage button is white$/) do
    	expect(page.find_by_id("search-bar-submit").native.css_value("color")).to eq "rgba(255, 255, 255, 1)"
    end

    Then(/^Background color of Build Collage button is dark gray$/) do
	expect(page.find_by_id("search-bar-submit").native.css_value("background-color")).to eq "rgba(85, 85, 85, 1)"
    end
=begin
    Then(/^Build Collage button becomes pressable$/)
=end
    When(/^User presses Build Collage button$/) do
	page.find_by_id("search-bar-submit").click()
    end
   
    Then(/^Build Collage button is to the right of input box$/) do
	expect(page.find_by_id("search-bar-container").native.css_value("display")).to eq "table"
    end

