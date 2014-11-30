# OmniAuth HackCentral

This is the offical OmniAuth strategy for authenticating to HackCentral.  To use it, you'll need to sign up for an OAuth Application ID and Application Secret on the [HackCentral Applications Page](https://google.com).

## Basic Usage

Add to Gemfile:

```ruby
gem 'omniauth-hackcentral'
```

Now are you are ready to use!

```ruby
use OmniAuth::Builder do
  provider :hackcentral, ENV['HACKCENTRAL_APPLICATION_ID'], ENV['HACKCENTRAL_APP_SECRET']
end
```
