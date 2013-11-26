require 'spec_helper'

describe Todo, 'validations' do
  it { expect(subject).to validate_presence_of(:title) }
  it { expect(subject).to validate_presence_of(:body) }
end
