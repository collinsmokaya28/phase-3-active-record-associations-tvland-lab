class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.collect do |char|
            "#{char.first_name} #{char.last_name}"
        end.join
    end
end