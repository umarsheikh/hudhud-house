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
  def render_index
    x = detailed
    y = needs_work if params[:complete_index]
    x = x + y if y
    links = []
    x.each do |title, filepath|
      classes = "left-link"
      classes += " highlight" if filepath.match(/#{params[:id]}/i) && params[:id].present?
      if params[:complete_index]
        links << "<li>" + link_to(title, blog_path(filepath, :complete_index => true), :class => classes ) + "</li>"
      else
        links << "<li>" + link_to(title, blog_path(filepath), :class => classes ) + "</li>"
      end
    end
    ("<ol>" + links.join + "</ol>").html_safe
  end
  def render_right_panel
    classes = "right-link"
      classes += " highlight" if our_location_path.match request.fullpath
 
    ("<ul>" + link_to("Our Location", our_location_path, :class => classes) + "</ul>").html_safe
  end
  def detailed
  [["How to Learn Javascript - A Short Course Outline", "javascript_course_outline"],
  ["Javascript Reference Implementations for Common Patterns", "javascript_patterns"],
  ["Miscellaneous Problems Encountered in Development and Their Solutions", "problem_based_learning"],
  ["Set Up and Configure Postgresql on Ubuntu for Rails Development", "postgres_setup"],
  ["How to add inline child forms on the parent form in javascript -- Inline Child Forms", "inline_forms"]
  ]
  end
  def needs_work
    [
    #["Some Simple Mongoid Commands to Get Started", "mongoid_simple_commands"],
    #["Salesforce App Development", "salesforce_app"],
    ["List of Personal Projects", "projects_for_development"],
    ["Machine Learning Course Notes", "machine_learning"],
    ["Machine Learning Exam Prep", "test_preparation_for_machine_learning"],
    ["Octave Installation and Basics for Mathematical Programming", "octave_1"],
    ["Javascript Effects Garden", "javascript_effects"],
    #["Survey of Javascript/Jquery Effects", "js_effects"],
    ["Interesting Stuff", "javascript_crockford"],
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
