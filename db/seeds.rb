# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Notebook.destroy_all

notebook_list = [

	{
		"title"=>"Myra's birthday", 
		"date"=>"2013-02-02", 
		"description"=>"This is my favourite photo of Myra's birthday. It was a wonderful day."
	}

]

notebook_list.each do |notebook|

  Notebook.create(

  	:title => notebook["title"], 
  	:date => notebook["date"], 
  	:description => notebook["description"], 
  	:file_location => notebook["file_location"])

end