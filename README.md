# InlineSpec

Test your one offs like a good boy should.

## Installation

Add this line to your application's Gemfile:

    gem 'inline_spec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inline_spec

## Usage

Writing one off tests or quick scripts should not be exempt from tests, nor
should you rely on ad-hoc testing strategies centered around Pry and lots of 
copying and pasting.  This little gem provides an easy way to run one off tests
of console or dataop scripts.  Prove your work people.

    class A
      def tru_dat?
        true
      end
    end

    class ATest < InlineSpec
      examples do
        describe A do
          its(:tru_dat) { should be_true }
        end
      end
    end

Put all of these things in one file (or whatever).  Load them into the console.
Run `ATest.test`.  Be amazed. If you need to run the tests in the context of 
another application, it's simple.  Get into the test console for that
application. Load the file. `ATest.test` The tests are not reloaded or cleared
after each run, so you can hack away at the class in the console until your 
tests pass.  If you need to clear the tests call `Atest.reset` and reload the 
test file.

And if you want to be a real bad ass - just code and test all in one file by 
putting the `ATest.test` line last in your file.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
