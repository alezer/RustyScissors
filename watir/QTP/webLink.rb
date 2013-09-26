module Watir
  class Anchor
    alias_method :orig_click, :click
    
    def click(*args)
      if args[0].to_s.upcase != '<SKIP>' then
	self.orig_click()
      end
    end

    def getROProperty (property)
      case property.downcase
        when 'text'
          return self.text()
      end
    end
    
    def verifyValue (value)
	if self.text() == value then
		return true
	else
		return false
	end
    end

  end
end