class Parent < ApplicationRecord
    has_one :child, autosave: true
    before_validation :generate_child, on: :create
    def generate_child
        puts "generate child is called!!!"
        build_child(
            name:"Child"
        )
    end
end