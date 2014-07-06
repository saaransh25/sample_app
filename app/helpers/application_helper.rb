module ApplicationHelper
	def fulltitle(pagetitle)
		basetitle="Ruby on Rails Tutorial App"
		if pagetitle.empty?
			"#{basetitle}"
		else
			"#{basetitle} | #{pagetitle}"
		end
	end
end
