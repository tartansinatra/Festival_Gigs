module ApplicationHelper

  def nice_date(date)
    # split('T').join(' ')
    date.strftime('%d %B %Y')
  end

  def nice_time(date)
    date.strftime('%R')
  end
  
end
