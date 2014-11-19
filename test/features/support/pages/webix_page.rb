class WebixPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title ""
  @@load_timeout

  div(:trip_type_return, :id => 'document_html_body_div_div_div_div_div_div_div_div_div_div_div_div_div_1_')
  span(:departure, :id => 'document_html_body_div_div_div_div_div_div_div_div_div_div_span_0_')
  span(:destination, :id => 'document_html_body_div_div_div_div_div_div_div_div_div_div_span_1_')
  span(:departure_date, :id => 'document_html_body_div_div_div_div_div_div_div_div_div_div_span_2_')
  span(:date_picked, :id => 'document_html_body_div_div_div_div_div_div_div_span_32_')
  div(:talin, :id => 'document_html_body_div_div_div_div_div_div_7_')
  div(:riga, :id => 'document_html_body_div_div_div_div_div_div_5_')
  label(:flexible_dates, :id => 'document_html_body_div_div_div_div_div_div_div_div_div_div_div_a_label_0_')
  button(:adults_plus, :id =>'x1416398282487')
  button(:children_plus, :id =>'x1416398282489')
  button(:book, :id => 'document_html_body_div_div_div_div_div_div_div_div_div_div_input_0_')

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
