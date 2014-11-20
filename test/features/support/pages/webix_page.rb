class WebixPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title ""
  @@load_timeout

  label(:trip_type_return, :data_testabilityid => 'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_div_div_div_1_div_a_label_0')
  span(:departure, :data_testabilityid => 'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_1_div_span_0')
  span(:destination, :data_testabilityid => 'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_2_div_span_0')
  span(:departure_date, :data_testabilityid => 'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_3_div_span_0')
  span(:date_picked, :data_testabilityid => 'document_html_body_div_2_div_div_1_div_div_2_div_3_div_5_span_0')
  div(:talin, :data_testabilityid => 'document_html_body_div_div_div_1_div_div_div_7')
  div(:riga, :data_testabilityid => 'document_html_body_div_1_div_div_1_div_div_div_5')
  label(:flexible_dates, :data_testabilityid => 'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_4_div_div_a_label_0')
  button(:adults_plus, :data_testabilityid =>'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_5_div_1_div_div_input_2')
  button(:children_plus, :data_testabilityid =>'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_5_div_2_div_div_input_2')
  button(:book, :data_testabilityid => 'document_html_body_div_4_div_1_div_1_div_div_div_1_div_div_div_7_div_input_0')

  def set_load_timeout(value)
    @@load_timeout = value
  end
  def has_expected_title
    has_expected_title?
  end

  def click_trip_type_return
    trip_type_return_element.when_visible(timeout = @@load_timeout)
    trip_type_return_element.click
  end
  def click_departure
    departure_element.when_visible(timeout = @@load_timeout)
    departure_element.click
  end
  def click_destination
    destination_element.when_visible(timeout = @@load_timeout)
    destination_element.click
  end
  def click_departure_date
    departure_date_element.when_visible(timeout = @@load_timeout)
    departure_date_element.click
  end
  def click_date_picked
    date_picked_element.when_visible(timeout = @@load_timeout)
    date_picked_element.click
  end
  def click_talin
    talin_element.when_visible(timeout = @@load_timeout)
    talin_element.click
  end
  def click_riga
    #riga_element.when_visible(timeout = @@load_timeout)
    riga_element.click
  end
  def click_flexible_dates
    flexible_dates_element.when_visible(timeout = @@load_timeout)
    flexible_dates_element.click
  end
  def click_adults_plus
    adults_plus_element.when_visible(timeout = @@load_timeout)
    adults_plus
  end
  def click_children_plus
    children_plus_element.when_visible(timeout = @@load_timeout)
    children_plus
  end
  def click_book
    book_element.when_visible(timeout = @@load_timeout)
    book
  end
end
