require 'rails_helper'

describe PropublicaService do
  it "can be initialized" do
    service = PropublicaService.new

    expect(service).to be_an_instance_of PropublicaService
  end
end