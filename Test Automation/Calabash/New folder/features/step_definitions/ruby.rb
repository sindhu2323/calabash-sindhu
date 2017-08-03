Given /^I am on "(.*?)" instance$/ do |url|

visit(url)
  
 end
And /^I set "(.*?)" for "(.*?)"$/ do |value,picker|
if(page.has_xpath?("//label[(normalize-space(text())=\"#{picker}\")]/../..", match: :first) )

		    getId = find(:xpath, "//label[(normalize-space(text())=\"#{picker}\")]/../..", match: :first)[:id]
			 find(:xpath, "//select[@id='#{id}']").find(:xpath, ".//option[text()=\"#{var}\"]").select_option
			 end
end
And /^I click on the "(.*?)" button for "(.*?)"$/ do |button,picker|
if(page.has_xpath?("//label[(normalize-space(text())=\"#{picker}\")]/../..", match: :first) )

		    getId = find(:xpath, "//label[(normalize-space(text())=\"#{picker}\")]/../..", match: :first)[:id]
			within_frame id
			if(page.has_xpath?("//button[(normalize-space(text())=\"#{button}\")]",match: :first))
    find(:xpath, "//button[(normalize-space(text())=\"#{button}\")]",match: :first).trigger ('click')
			end
			end
end

And /^I click on "(.*?)" button$/ do |button|
if(page.has_xpath?("//button[(normalize-space(text())=\"#{button}\")]",match: :first))
    find(:xpath, "//button[(normalize-space(text())=\"#{button}\")]",match: :first).trigger ('click')
end
end
And /^I validate page has text "(.*?)"$/ do |text|
if(page.has_content?(pgtext))
puts 'The given text is visible on the form'
else
puts 'The given text is ***NOT*** visible on the form'
end

end