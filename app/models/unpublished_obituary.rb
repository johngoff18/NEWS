class UnpublishedObituary < ApplicationRecord
	enum status: [ :approved, :draft, :unapproved ]
end
