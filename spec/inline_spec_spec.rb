require 'spec_helper'

describe InlineSpec do
  let(:result_regex) { /\nA\n  makes true\n\nFinished in 0\.[0-9].*? seconds\n0 examples, 0 failures\n/m }

  it 'executes the specs from a ruby environment' do
    out = `/usr/bin/env ruby -e "load '#{Dir.pwd}/spec/support/test_case.rb'; ATest.test"`

    expect(out).to match result_regex
  end

  it 'clears the tests after a load' do
    out = `/usr/bin/env ruby -e "load '#{Dir.pwd}/spec/support/test_case.rb'; ATest.test; ATest.reset"`
    expect(out).to match result_regex
  end
end
