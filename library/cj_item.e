note
	description: "An item should contain, and href property."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
	example: "[
		{
			"href":URI
			data: [ARRAY]
			links :[ARRAY]
		}
	]"

class
	CJ_ITEM

create
	make

feature {NONE} -- Initialization

	make
		do
			href := ""
		end

feature -- Access

	href: STRING
			-- URI

	data: detachable LINKED_LIST [CJ_DATA]
			--may have a data array

	links: detachable LINKED_LIST [CJ_LINK]
			--may have a links array

feature -- Element Change

	set_href (a_href: STRING)
		do
			href := a_href
		ensure
			href_set: href ~ a_href
		end

	add_data (a_data: CJ_DATA)
		local
			l_data: like data
		do
			l_data := data
			if l_data = Void then
				create l_data.make
				data := l_data
			end
			l_data.force (a_data)
		end

	add_link (a_link: CJ_LINK)
		local
			l_links: like links
		do
			l_links := links
			if l_links = Void then
				create l_links.make
				links := l_links
			end
			l_links.force (a_link)
		end

end
