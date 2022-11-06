class Child < ApplicationRecord
  belongs_to :parent
  before_validation :important_task
  def important_task
      puts "I'm performing an imporant job here!!!"
  end
end