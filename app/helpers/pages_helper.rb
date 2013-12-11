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
  def blog_ids
    %W[
    postgres_setup
    mongoid_simple_commands
    salesforce_app
    file_upload_with_carrier_wave_and_fog
    rspecs
    ajaxify_form_submission
    setting_up_dev_machine
    problem_based_learning
    javascript_course_outline
    ]
  end
  def blog_names_and_ids
  [["How to Learn Javascript - A Short Course Outline", "javascript_course_outline"]]
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
