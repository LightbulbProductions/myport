module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Greetings visitor from #{session[:source]}! You are currently on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
   SiteViewTool::Renderer.copyright 'Michelle Gerber', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Me'
      },
     
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: contact_path,
        title: 'Contact'
      }
    ]
  end
  
  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
  
  def active? path
    "active" if current_page? path
  end
  

end
