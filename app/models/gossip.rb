class Gossip < ApplicationRecord
  
  belongs_to :user
  has_many :join_table_tag_gossips
  has_many :tags, through: :join_table_tag_gossips, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :title,   
  presence: {message:"Le titre est obligatoire"}  
  validates :title, length: {minimum: 3, maximum: 20, message:"Le titre doit faire entre 3 et 20 caractères"}
  

  validates :content,   
  presence: {message:"Le potin est obligatoire"} 
  validates :content, length: {minimum: 10, message:"Le content doit avoir minimum 10 caractères"}

end
