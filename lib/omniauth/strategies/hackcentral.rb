require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class HackCentral < OmniAuth::Strategies::OAuth2

      option :name, "hackcentral"

      option :client_options, {
        authorize_url: "https://hackcentral.co/oauth/authorize",
        token_url: "https://hackcentral.co/oauth/token",
        site: "https://hackcentral.co"
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          %w[scope client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

      def callback_url
        options[:redirect_uri] || super
      end

      info do
        {
          name: raw_info["user"]["name"],
          admin: raw_info["user"]["admin"],
          mlh: raw_info["user"]["mlh"],
          id: raw_info["user"]["id"]
        }
      end

      uid { raw_info["user"]["id"].to_s }

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get("/api/v1/user").parsed
      end
    end
  end
end

OmniAuth.config.add_camelization "hackcentral", "HackCentral"
