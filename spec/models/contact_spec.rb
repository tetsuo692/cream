require 'spec_helper'

describe Contact do
  it { should have_field(:first_name).of_type(String)}
  it { should have_field(:last_name).of_type(String)}
end
