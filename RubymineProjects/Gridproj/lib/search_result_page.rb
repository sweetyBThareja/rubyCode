class SearchResultPage
  include PageObject

  expected_title %r".*Google Search$"

  def initialize_page
    has_expected_title?
  end

end