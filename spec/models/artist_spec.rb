require 'spec_helper'

describe Artist do
  it { should respond_to :name }
  it { should validate_presence_of :name }

  it { should respond_to :born }
  it { should validate_presence_of :born }

  it { should respond_to :died }
  it { should validate_presence_of :died }

  # it { should have_many :works }
end
