class ArticlesController<ApplicationController

def index
@abc=Abc.all()
end

def new
end

def create
puts "in def create"
title=params[:title]
content=params[:content]
puts "title is : #{title}"
puts "content is : #{content}"
Abc.create(:title=>title,:content=>content)
return redirect_to '/articles'
end

def show
	puts "inside def show "
	puts "id is #{params[:id]}"
	@abc=Abc.find(params[:id])
end

def edit
	puts "inside def edit"
	puts "id is : #{params[:id]}"
	@abc=Abc.find(params[:id])

end

def update
puts "in def update"
id=params[:id]
title=params[:title]
content=params[:content]
puts "title is : #{id}"
puts "title is : #{title}"
puts "content is : #{content}"

abc=Abc.find(id)
abc.title=title
abc.content=content
abc.save
return redirect_to '/articles'
end

def delete
	abc=Abc.find(params[:id])
	abc.destroy
	abc.save
	return redirect_to '/articles'
end
end