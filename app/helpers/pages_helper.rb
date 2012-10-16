module PagesHelper
  def portfolio_for
    case @type
      when "rails"
        list = []
        list << image_tag("portfolio/rails/39shops.com")
        list << image_tag("portfolio/rails/assembla.com")
        list << image_tag("portfolio/rails/campusrock.com")
        list << image_tag("portfolio/rails/decodon.com")
        list << image_tag("portfolio/rails/homeschoolmaster.com")
        list << image_tag("portfolio/rails/mpifix.com")
        list << image_tag("portfolio/rails/olery.com")
        list << image_tag("portfolio/rails/underthesite.com")
      when "javascript"
        list = []
      when "php"
        list = []
        list << image_tag("portfolio/php/clickfuel.com")
        list << image_tag("portfolio/php/urfilez.com")
    end
    list
  end
  def portfolio_first_for
    str = ""
    case @type
      when "rails"
        str = image_tag("portfolio/rails/first_one-aboutus.org")
      when "javascript"
        str = image_tag("portfolio/javascript/first_one-profitably.com")
      when "php"
        str = image_tag("portfolio/php/first_one-mpoc.org.pk")
    end
    str
  end
end
