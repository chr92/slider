class Page < ActiveRecord::Base
  before_validation :set_unique, if: proc { unique.nil? }

  validates :unique, uniqueness: true
  validates :unique, :html, presence: true

  private

  def set_unique
    # I think a nicer attribute name would be uid/slug,
    # which would make the intended use of the attribute clearer

    self.unique = loop do
      random_unique = SecureRandom.urlsafe_base64(4)
      break random_unique unless Page.find_by(unique: random_unique)
    end
  end
end
