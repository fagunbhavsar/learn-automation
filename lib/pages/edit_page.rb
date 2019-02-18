class EditPage < Page
  page_url  base_url

  def view_pop_up
    @browser.element(:text => 'Let\'s get started!').wait_until_present
  end

  def get_started
    @browser.element(:text => 'Let\'s get started!').click
  end

  def see_app_panel
      @browser.element(:class => 'ui-page-panel').exist?
  end

  def view_basic_tab
      @browser.element(:text => '    Basic  ').exist?
  end

  #def view_basic_tab_details
      #@browser.element(:class => 'ui-accordion-content', :index => 0).exist?
      #@browser.element(:class => )
  #nd

  def view_messaging_tab
      @browser.element(:text => 'Messaging').exist?
  end

  #def view_messaging_tab_details

  #end

  def click_messaging_tab
    msg_tab = @browser.element(:text => 'Messaging')
    msg_tab.click
    msg_tab.wait_until_present
  end

  def view_start_module
    @browser.element(:class => 'module-title', :text => 'Start').exist?
  end

  def add_page
    new = @browser.element(:id => 'add-page')
    new.click
    new.wait_until_present
  end

  def see_newpage_popup
    @browser.element(:id => 'ui-dialog-title-create-dialog').exist?
  end

  def enter_new_name(title)
    @browser.text_field(:class => 'indented submitonenter').set(title)
    @browser.send_keys(:return)
  end

  def module_send_n_sms
    source = @browser.element(:class => 'module-item ui-widget-content ui-corner-all module-item-green ui-draggable', :text => 'Send an SMS')
    destination = @browser.element(:class => 'ui-page-panel ui-tabs-panel ui-widget-content ui-droppable')
    source.drag_and_drop_on destination
  end

  def sms_module_ports
    @browser.element(:id => 'node-879910').exist?
    @browser.element(:id => 'node-361806').exist?
  end

  def connect_sms_module
    start = @browser.element(:id => 'node-98287')
    dest = @browser.element(:id => 'rec-930891')
    start.drag_and_drop_on dest
  end

  def set_phone_number(number)
    @browser.text_field(:name => 'phone_constant').set(number)
  end

  def set_message_text(message)
    @browser.text_field(:name => 'message_phrase[]').set(message)
  end

  def module_send_n_email
    origin = @browser.element(:class => 'module-item ui-widget-content ui-corner-all module-item-green ui-draggable', :text => 'Send an Email')
    final = @browser.element(:class => 'ui-page-panel ui-tabs-panel ui-widget-content ui-droppable')
    origin.drag_and_drop_on final
  end

  def email_module_ports
    @browser.element(:id => 'node-895461').exist?
    @browser.element(:id => 'node-26740').exist?
  end

  def connect_email_module
    one = @browser.element(:id => 'node-771778')
    two = @browser.element(:id => 'rec-523756')
    one.drag_and_drop_on two
  end

  def click_basic_tab
    b = @browser.element(:text => '    Basic  ')
    b.click
    b.wait_until_present
  end

  def hang_up_module
    first = @browser.element(:class => 'module-item ui-widget-content ui-corner-all module-item-red ui-draggable', :text => 'Hang Up or Exit')
    last = @browser.(:class => 'ui-page-panel ui-tabs-panel ui-widget-content ui-droppable')
    first.drag_and_drop_on last
  end

  def connect_hang_up_sms_module
    c = @browser.element(:id => 'node-378403')
    h = @browser.element(:id => 'rec-789517')
    c.drag_and_drop_on h
  end

  def 
end