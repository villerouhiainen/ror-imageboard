class Board < ActiveRecord::Base
    validates :title, :abbr, :presence => true
    validates :title, :length => { :minimum => 2 }
    validates :title, :uniqueness => { :message => "already taken title" }
    validates :abbr, :uniqueness => { :message => "already taken abbr" }
    has_many :topics
    
    before_save do
      self.abbr = abbr.parameterize
    end

    def to_param
      abbr
    end
end
