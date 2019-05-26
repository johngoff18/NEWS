class UnpublishedImagePost < ApplicationRecord
	enum status: [ :approved, :draft, :unapproved ]
end
