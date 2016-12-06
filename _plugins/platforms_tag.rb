module Jekyll
  class PlatformsTag < Liquid::Tag
	
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)		
		page = context.environments.first["page"]
		folderNames = page["dir"].split('/')
		
		platformNames = context.registers[:site].config["platforms"].clone
		nonWinPhoneFolders = context.registers[:site].config["non-winphone-folders"]
		pageSuiteNames = page["platforms"]		
		result = String.new
				
		# If the folderNames collection contains the "controls" or "data-storage" records execute the "if" body
		if (folderNames & (["controls"] | ["data-storage"])).any?
			unless pageSuiteNames.nil?
				splittedNames = pageSuiteNames.split(',')
				platformNames = platformNames.select {|suite| splittedNames.any? {|name| suite.downcase.include?(name)}}
			end
			
			if pageSuiteNames.nil? && (folderNames & nonWinPhoneFolders).any?
				platformNames.reject!{|suite| suite.downcase.include?("windows phone 8.1")}
			end
		
			platformNames.each_with_index do |suite, index|				
				if index != 0
					result += "<span class='separator'> | </span>"
				end
				result += "<span class='platform'>#{suite}</span>"
			end
			
			"<div class='platforms'><div>#{@text} #{result}</div></div>"
		end
    end
  end
end

Liquid::Template.register_tag('platforms', Jekyll::PlatformsTag)