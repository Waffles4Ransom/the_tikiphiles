class Drink < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, :on => :create
  validates :bar, presence: true, :on => :create
  validates :location, presence: true,:on => :create
  validates :rating, presence: true,:on => :create
  validates :image_path, allow_blank: true, format: {with: /\.(png|jpg)\Z/i}
end 