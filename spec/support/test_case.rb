require 'inline_spec'

class A
  def a
    true
  end
end

class ATest < InlineSpec
  examples do
    describe A do
      it 'makes true' do
        expect(subject.a).to be_true
      end
    end
  end
end
