module MoviesHelper
  def formatted_date(date)
    date.strftime("%Y%m%d") unless date.nil?
  end
end
