class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_one_clothing_type

  before_destroy :check_no_employees

  def must_carry_one_clothing_type
    unless mens_apparel || womens_apparel
      errors.add(:mens_or_womens, "must carry at least one clothing type")
    end
  end

  private
    def check_no_employees
      throw :abort if Employee.find_by(store: self.id)
    end
end
