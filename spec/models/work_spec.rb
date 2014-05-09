require 'spec_helper'

describe Work do
  it { should respond_to :name }
  it { should validate_presence_of :name }

  it { should respond_to :year_completed }
  it { should validate_presence_of :year_completed }

  it { should respond_to :materials }
  it { should validate_presence_of :materials }

  it { should respond_to :image_url }
end
