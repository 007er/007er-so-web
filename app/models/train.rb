class Train < ApplicationRecord
	validates_presence_of :number
	has_many :reservations

	#产生所有位置从 1A～6A

	SEATS = begin
		(1..6).to_a.map do |series|
			["A", "B", "C"].map do |letter|
				"#{series}#{letter}"
			end
		end
	end.flatten

	def available_seats
		# 所有 SEATS 扣掉意境订位的资料
		return SEATS - self.reservations.pluck(:seat_number)
	end
	
end
