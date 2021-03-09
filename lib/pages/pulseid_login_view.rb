class PulseidPage < Page
  page_url   base_url

  def open_app_page
    @browser.element(:text => 'Sign in with VOL').click
  end

  def login(email,key)
    #@browser.element(:class => ['sc-cmthru liExAy']).wait_until_present
    #require'pry'; binding.pry
    @browser.text_field(:class => ['sc-VigVT gupvKM'], :id => 'username').present?
    @browser.text_field(:id => 'username').set(email)
    @browser.element(:class => ['sc-hwwEjo hpNebt sc-kpOJdX eAgQMY']).click
    @browser.text_field(:class => ['sc-VigVT gupvKM'], :id => 'password').set(key)
  end

  def click_to_enter
    @browser.element(:text => 'Continue').click
  end

  def validate_logged_in_view
    @browser.element(:text => 'TextBase__ink__1kNFY TextLarge__root__2Hpaz').wait_until_present
  end


end
