# OK Computer Html View

This gem provide html view for [OK Computer](https://github.com/sportngin/okcomputer).

![sample](https://github.com/Madogiwa0124/okcomputer_html_view/blob/main/sample.png)

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'okcomputer_html_view'
```
or

```ruby
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'okcomputer_html_view', github: 'Madogiwa0124/okcomputer_html_view'
```

And then execute:

    $ bundle install

## Usage

load `OkcomputerHtmlView.load_path` in your `config/application.rb`.

``` ruby
module YourApplication
  class Application < Rails::Application
    config.to_prepare do
      load OkcomputerHtmlView.load_path
    end
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/madogiwa0124/okcomputer_html_view. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/madogiwa0124/okcomputer_html_view/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the OkcomputerHtmlView project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/madogiwa0124/okcomputer_html_view/blob/main/CODE_OF_CONDUCT.md).
