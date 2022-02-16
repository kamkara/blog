module ApplicationHelper

#Onglet Title
def title
 base_title = "kamkara Blog"
  if @title.nil?
  base_title
  else
  "#{@title} | #{base_title}"
  end
end

#site description
def description
  "Rails dev ......"
end

def keywords
  "learn rails, rails app"
end
end
