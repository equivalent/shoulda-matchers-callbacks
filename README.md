# Shoulda::Matchers::Callbacks

Gem created from my refused :broken_heart: 
[Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) pull request
https://github.com/thoughtbot/shoulda-matchers/pull/353 :smile:
 

## ActiveModel Matchers

Matchers to test callbacks:

```ruby
describe Event do
  it { should have_after_create_callback_on(:send_invitation_emails) }
  it { should have_before_destroy_callback_on(:delete_calendar_entries)
}
  it { should have_around_update_callback_on(:sign_other_events) }
  it { should have_after_validation_callback_on(:mark_event_upcomming) }
  # ... you can use any of possible ActiveRecord::Base::CALLBACKS
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'shoulda-matchers-callbacks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shoulda-matchers-callbacks



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
