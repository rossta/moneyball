module ApplicationHelper

  def polymorphic_edit_hole_path(hole)
    send("edit_#{resource_name(hole.parent)}_hole_path", hole.parent, hole)
  end
  
  def polymorphic_holes_path(parent)
    send("#{resource_name(parent)}_holes_path")
  end
  
  def resource_name(resource)
    resource.class.name.tableize.singularize
  end
end
