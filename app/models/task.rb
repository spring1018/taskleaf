class Task < ApplicationRecord
    validates :name, presence: true
    validates :name, length: {maximum: 30}
    validate :validate_name_not_inclulding_comma

    private

    def validate_name_not_inclulding_comma
        errors.add(:name, 'カンマは無理！' ) if name&.include?(',')
    end
end
