class CategorySplashPage
  include PageObject
  include Aaa

  expected_title /^Sarees - Buy Sarees Online at India's Best Online Shopping Site Flipkart.com/

  def initialize_page
    has_expected_title?
  end


end