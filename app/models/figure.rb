class Figure <ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles

end
