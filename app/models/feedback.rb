class Feedback < ActiveRecord::Base

	TYPES = [
					 'Complaint',
					 'Suggestion',
					 'Feedback',
					 'Compliment'
					]

	TOPICS = [
						'Train service',
						'Train timetable',
						'Tickets & Fares',
						'Trackwork',
						'Cleanliness',
						'Passenger Information'
						]

	STATIONS = %w[
							Aberdeen
							Adamstown
							Townhall
							Central
							Fairfield
							]

	LINES = [
						'Eastern Suburbs & Illawarra Line',
						'Bankstown Line',
						'Inner West Line',
						'Airport & East Hills Line',
						'South Line',
						'Cumberland Line',
						'North Shore Line',
						'Western Line',
						'Carlingford Line',
						'Olympic Park Line',
						'Northern Line',
						'South coast Line',
						'Southern Highlands Line',
						'Blue Mountains Line',
						'Newcastle & Central Coast Line',
						'Hunter Line'
					]

	COMMON_COMPLAINTS = [
												'Major delays',
												'Dirty trains',
												'Train too packed',
												'Not enough services',
												'Other'
											]

  validates_presence_of :comment, :line, :station

end
