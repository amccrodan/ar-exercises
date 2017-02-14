class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than: 39, less_than: 201 }

  before_create :assign_password

  private
    def assign_password
      self.password = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
    end
end
