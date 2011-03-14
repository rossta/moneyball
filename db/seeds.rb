# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

name    = "Bethpage Black"
course  = Course.find_by_name(name) || Course.create!(:name => name)
data    = {
  :number =>    %w[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18].map(&:to_i),
  :yards =>     %w[421 353 164 486 424 385 567 196 382 434 421 432 480 168 430 457 195 394].map(&:to_i),
  :handicap =>  %w[7 13 17 3 5 9 1 15 11 8 12 4 2 18 10 6 16 14].map(&:to_i),
  :par =>       %w[4 4 3 5 4 4 5 3 4 4 4 4 5 3 4 4 3 4].map(&:to_i)
}

course.holes.each do |hole|
  index = data[:number].index(hole.number)

  hole.update_attributes({
    :yards    => data[:yards][index],
    :handicap => data[:handicap][index],
    :par      => data[:par][index]
  })
end