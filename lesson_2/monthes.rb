monthes = {
	January: 31,
	February: 28,
	March: 31,
	April: 30,
	May: 31,
	June: 31,
	Jule: 30,
	August: 31,
	September: 30,
	October: 31,
	November: 30,
	December: 31
}

monthes.each do |title,days|
	if days.to_i==30
		puts title.to_s
	end
end