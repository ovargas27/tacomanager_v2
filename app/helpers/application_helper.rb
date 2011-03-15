module ApplicationHelper
  def errors_for(object)
    list_items = object.errors.map{|key, value| content_tag(:li, "#{key}: #{value}") }
    content_tag(:ul, list_items.join.html_safe)
  end

def display_all_error_messages(object, method)
  list_items = object.errors[method].map { |msg| content_tag(:li, msg) }
  content_tag(:ul, list_items.join.html_safe)
end
   
end
