class Author < ApplicationRecord
        validates :name, presence, uniqueness: true
        validates :phone_number, length: { is: 10 }


def create 
        author = Author.create(name: params[:name], phone_number: params[phone_number])
end 
end