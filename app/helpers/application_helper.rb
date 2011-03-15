module ApplicationHelper

  def title(title = "Moneyball")
    content_for(:title) { title }
  end

  def polymorphic_edit_hole_path(parent, hole)
    send("edit_#{resource_name(parent)}_hole_path", parent, hole)
  end

  def polymorphic_holes_path(parent)
    send("#{resource_name(parent)}_holes_path")
  end

  def resource_name(resource)
    resource.class.name.tableize.singularize
  end

  def course_select_options
    Course.all.map {|c| [c.name, c.id] }
  end
end
