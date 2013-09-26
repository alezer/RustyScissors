module Watir
  class Image

    def verifyExist ()
	if self.exists? then
		return true
	else
		return false
	end
    end

    def buttonClick()
	    self.click()
    end
    
  end
end