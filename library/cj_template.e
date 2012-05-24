note
	description: "[
		The template object contains all the input elements used to add or edit collection records.
		It's an optional object, if it exist, there is only one object of this type
	]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"
	example: "[
		{
			"template":
			 {
			   "data": [ARRAY]
			 }
		}
	]"

class
	CJ_TEMPLATE

create
	make

feature {NONE} --Initialization

	make
		do
			create data.make
		end

feature -- Access

	data: LINKED_LIST [CJ_DATA]

feature -- Element Change

	add_data (a_data: CJ_DATA)
		do
			data.force (a_data)
		end

end
