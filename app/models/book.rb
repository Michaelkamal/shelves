class Book < ApplicationRecord
    enum transcation: {"Sell" => 0, "Free Share" =>1,"Exchange" =>2,"Sell By Bids" =>4}
    
    #### Relations ####
    belongs_to :category
    belongs_to :user
    has_many :book_images, :dependent => :destroy

    #### accept upload multiple images
    # accepts_nested_attributes_for :book_images,:reject_if => lambda { |t| t['image'].nil? }, :allow_destroy => true
    accepts_nested_attributes_for :book_images
end


