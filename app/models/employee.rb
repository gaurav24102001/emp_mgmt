class Employee < ApplicationRecord
   
    validates :name, :phone, :email, :presence =>true
    before_validation :disp
    private
    def disp
       puts" in employees model"
    end
   
end
