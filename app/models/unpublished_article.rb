class UnpublishedArticle < ApplicationRecord
	enum status: [ :approved, :draft, :unapproved ]
end
