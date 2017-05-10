module ApplicationHelper
  def source_helper(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', contact_path } if you'd like to work together."
      content_tag(:div, greeting.html_safe, class: styles)
    end
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert 
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Preston Matheson's Portfolio", sticky: false)
  end
end
