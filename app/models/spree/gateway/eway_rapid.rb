module Spree
  class Gateway::EwayRapid < Gateway
    preference :login, :string
    preference :password, :string
    preference :client_side_encryption_key, :text

    def method_type
      'eway_rapid'
    end

    def provider_class
      ActiveMerchant::Billing::EwayRapidGateway
    end

    def options
      super().merge(:test => self.preferred_test_mode)
    end
  end
end
