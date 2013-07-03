module BirthdateHelper

	def get_time_diff(time1, time2)
		diff_in_seconds = (time1 - time2).floor
		components = []
		intervals = [:years]
		
		intervals.each do |interval|
			component = diff_in_seconds / 1.send(interval)
			diff_in_seconds -= component
			components << component
		end
		components
	end
end
