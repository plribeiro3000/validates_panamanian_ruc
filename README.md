# ValidatesPanamanianTaxpayerRegistry

This projects aims to validate Panamanian Taxpayer Registry - RUC (Registro Unico de Contribuyentes).

The validations are following the documentation found online [here](https://www.oecd.org/tax/automatic-exchange/crs-implementation-and-assistance/tax-identification-numbers/Panama-TIN.pdf) and inside the project [here](https://github.com/plribeiro3000/validates_panamanian_taxpayer_registry/blob/master/docs/Panama-TIN.pdf)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validates_panamanian_taxpayer_registry'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install validates_panamanian_taxpayer_registry

## Usage

Just use as any other validator:

```ruby
class User < ActiveRecord::Base
  validates :identity, panamanian_taxpayer_registry: true
end
```

## Testing

Require the matcher:

```ruby
require 'validates_panamanian_taxpayer_registry/require_a_valid_panamanian_taxpayer_registry_matcher'
```

Use in your tests:

```ruby
it { is_expected.to require_a_valid_panamanian_taxpayer_registry } # It will test the attribute :taxpayer_registry by default
it { is_expected.to require_a_valid_panamanian_taxpayer_registry(:id) } # It will test the attribute :id
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/plribeiro3000/validates_panamanian_taxpayer_registry. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/plribeiro3000/validates_panamanian_taxpayer_registry/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ValidatesPanamanianTaxpayerRegistry project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/plribeiro3000/validates_panamanian_taxpayer_registry/blob/master/CODE_OF_CONDUCT.md).
