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
  def all_blogs
    {
      :detailed => detailed,
      :needs_work => needs_work
    }
  end
  def detailed
  [["How to Learn Javascript - A Short Course Outline", "javascript_course_outline"],
  ["Javascript Reference Implementations for Common Patterns", "javascript_patterns"],
  ["Miscellaneous Problems Encountered in Development and Their Solutions", "problem_based_learning"],
  ["Set Up and Configure Postgresql on Ubuntu for Rails Development", "postgres_setup"],
  ]
  end
  def needs_work
    [
    #["Some Simple Mongoid Commands to Get Started", "mongoid_simple_commands"],
    #["Salesforce App Development", "salesforce_app"],
    ["Octave Installation and Basics for Mathematical Programming", "octave_1"],
    ["File Upload with Carrier Wave and Fog", "file_upload_with_carrier_wave_and_fog"],
    ["Rspecs and Testing", "rspecs"],
    ["How to Ajaxify Form Submission in Rails", "ajaxify_form_submission"],
    ["Setting Up Dev machine", "setting_up_dev_machine"]]

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
