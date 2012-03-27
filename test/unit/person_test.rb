require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "update address" do
    expected_new_address="pandascout"
    person              = Person.create(first_name: "bryan")
    address             = person.addresses.create(street: "")

    person.update_attributes({ :addresses_attributes => { "0" => { :street => expected_new_address, :id => address.id } } })
    assert_equal expected_new_address, person.addresses.first.street
  end
end
