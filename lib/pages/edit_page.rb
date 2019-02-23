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
    @browser.text_field(:class => 'submitonenter').set(title)
    @browser.send_keys(:return)
  end

  def module_send_n_sms
    #require "pry"; binding.pry
    @browser.div(:class => 'ui-accordion-content', :index => 3).li(:class => 'ui-draggable', :index => 2).a(:class => 'module-add').click
  end

  def sms_module_ports
    #require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-1").div(:class => "mod-south").div(:class => "ui-draggable").exist?
    @browser.div(:class => "syn-module syn-module-green").div(:class => "mod-north").div(:class => "ui-droppable").exist?
  end

  def connect_sms_module
    start = @browser.div(:id => "tabs-2").div(:id => "module-1").div(:class => "mod-south").div(:class => "ui-draggable")
    dest = @browser.div(:class => "syn-module syn-module-green").div(:class => "mod-north").div(:class => "ui-droppable")
    start.drag_and_drop_on dest
  end

  def set_phone_number(number)
    #require "pr"; binding.pry
    @browser.textarea(:name => 'phone_constant').set(number)
  end

  def set_message_text(message)
    @browser.textarea(:name => 'message_phrase[]').set(message)
  end

  def module_send_an_email
    #require "pry"; binding.pry
    @browser.div(:class => 'ui-accordion-content', :index => 3).li(:class => 'ui-draggable', :index => 1).a(:class => 'module-add').click
  end

  def host_name (hostname)
    require "pry"; binding.pry
    @browser.input(:name => 'smtp_url').set(hostname)
  end

  def port_number(portno)
    require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel").div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section").div(:class => "panel-subsection", :index => 1).div(:class => "left", :index => 1).input(:name => "port").set(portno)
  end

  def user_email(uemail)
    #require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel").div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section").div(:class => "panel-subsection", :index => 2).div(:class => "left", :index => 1).input(:name => "username").set(uemail)
  end

  def enter_password(pword)
    #require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel").div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section").div(:class => "panel-subsection", :index => 3).div(:class => "left", :index => 1).input(:name => "password").set(pword)
  end

  def from_address(faddress)
    require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel", :index => 3).div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section-nominimize").div(:class => "panel-subsection", :index => 1).div(:class => "left", :index => 2).div(:class => "syn-selectappvar-wrap").textarea(:name => "from_constant").set(faddress)
  end

  def to_address(taddress)
    require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel", :index => 3).div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section-nominimize").div(:class => "panel-subsection", :index => 2).div(:class => "left", :index => 2).div(:class => "syn-selectappvar-wrap").textarea(:name => "to_constant").set(taddress)
  end

  def enter_subject(subj)
    require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel", :index => 3).div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section-nominimize").div(:class => "panel-subsection", :index => 3).div(:class => "left", :index => 2).div(:class => "syn-selectappvar-wrap").textarea(:name => "subject_constant").set(subj)
  end

  def enter_msg(msg)
    require "pry"; binding.pry
    @browser.div(:id => "tabs-2").div(:id => "module-3").div(:class => "panel", :index => 3).div(:class => "panel-bd").div(:class => "inner").div(:class => "panel-section inner").div(:class => "panel-subsection").div(:class => "left").table(:class => "syn-expandinglist-rows-1", :index => 2).tbody.tr.td.div(:class => "syn-selectappvar-wrap").textarea(:name => "message_phrase[]").set(msg)
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

end