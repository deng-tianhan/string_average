require_relative 'string_average'

describe '#string_average' do
	it { expect(string_average('')).to eq('n/a') }

	context 'a single number' do
		it { expect(string_average('ten')).to eq('n/a') }

		context 'between 0-9' do
			ZERO_TO_NINE.each do |number|
				it { expect(string_average(number)).to eq(number) }
			end
		end
	end

	context 'mutiple numbers' do
		it { expect(string_average('seven eleven')).to eq('n/a') }

		context 'between 0-9' do
			context 'same number' do
				ZERO_TO_NINE.each do |number|
					it { expect(string_average("#{number} #{number} #{number}")).to eq(number) }
				end
			end

			context 'different numbers' do
				it { expect(string_average('one three')).to eq('two') }
				it { expect(string_average('six seven four')).to eq('five') }
				it { expect(string_average('zero nine five two')).to eq('four') }
			end
		end
	end
end