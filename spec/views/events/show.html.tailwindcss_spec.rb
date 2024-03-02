# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/show', type: :view do
  before(:each) do
    assign(:event, Event.create!(
                     title: 'Title',
                     location: 'Location',
                     description: 'MyText',
                     host: nil
                   ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
