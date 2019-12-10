class Theater
  attr_reader :number_seats

  def initialize(number_seats)
    @number_seats = number_seats
    @number_patrons = 0
  end

  def admit!(number_to_admit = 1)
    if @number_patrons + number_to_admit > @number_seats
      puts "Sorry, we are sold out! We only have #{@number_seats} seats!"
    else
      @number_patrons += number_to_admit
    end
  end

  def at_capacity?
    @number_seats == @number_patrons
  end

  def record_walk_outs!(walkouts = 1)
    @number_patrons -= walkouts
  end

end

the_theater = Theater.new(10)
puts the_theater.number_seats
puts the_theater.admit!(10)
puts the_theater.at_capacity?
puts the_theater.record_walk_outs!(5)
