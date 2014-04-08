require 'spec_helper'

describe Movement do
  it { should respond_to :name }
  it { should validate_presence_of :name }

  it { should respond_to :description }
  it { should validate_presence_of :description }

  it { should have_many :artists }
end
