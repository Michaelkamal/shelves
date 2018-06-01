class User < ApplicationRecord
    has_secure_password
    before_create :confirmation_token
    enum gender: {male: "male", female: "female"}
    enum role: {"Normal user" => 0, "Book store" =>1}

    def email_activate
        self.email_confirmed = true
        self.confirm_token = nil
        save!(:validate => false)
      end
      private 
      def confirmation_token
        if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
        end
      end
end
