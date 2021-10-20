class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :image
  has_many :items, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :username, presence: true

  def already_favorited?(item)
    self.favorites.exists?(item_id: item.id)
  end

end