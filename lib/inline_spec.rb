require "inline_spec/version"
require 'rspec'

class InlineSpec
  def self.test
    require 'rspec/core/formatters/documentation_formatter'

    formatter = RSpec::Core::Formatters::DocumentationFormatter.new(STDOUT)
    reporter = RSpec::Core::Reporter.new(formatter)

    reporter.report('unknown') do
      examples.each { |ex| ex.run(formatter) }
    end
  end

  def self.reset
    @examples = []
  end

  def self.examples
    @examples ||= []
    if block_given?
      @examples << yield
    else
      @examples
    end
  end
end
