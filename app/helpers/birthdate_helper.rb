module BirthdateHelper

	def get_time_diff(time1, time2)
		diff_in_seconds = (time1.to_time - time2.to_time).floor
		components = []
		intervals = [:years, :months, :weeks, :days]
		
		intervals.each do |interval|
			component = (diff_in_seconds / 1.send(interval)).floor
			diff_in_seconds -= component.send(interval)
			components << component
		end
		components
	end
end
