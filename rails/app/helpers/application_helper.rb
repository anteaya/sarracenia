# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  @page_title = 'Hello'
  
  def user_types
    #define numbers correlate to what user type
    {0 => 'Admin', 1 => 'User', 2 => 'Client'}
  end
  
  def status_codes
    {0 => 'Open', 2 => 'Resolved', 3 => 'Closed'}
  end
  
  def level_color_image
    {
      0 => "<img src='/images/red.jpg' alt='Level Red' />", 
      1 => "<img src='/images/orange.jpg' alt='Level Orange' />",
      2 => "<img src='/images/yellow.jpg' alt='Level Yellow' />" 
    }
  end
  
  def get_user_display
    return 'Aaron Smith'
  end
  
  def get_company_name
    'Crispin Porter + Bogusky'
  end
  
  def set_page_title=(v)
    @p = v
  end
  
  def months
    {0 => 'January', 1=>'February', 2=>'March', 3=> 'April', 4=>'May', 
      5=> 'June', 6=> 'July', 7 => 'August', 8 => 'Septempber', 9=>'October', 
      10=>'Novermber', 11=>'December'}
  end
end