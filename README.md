# Geckoboard
Geckoboard push api lib.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geckoboard', :git => 'https://github.com/henteko/geckoboard.git'
```

And then execute:

    $ bundle

## Usage

```
require 'geckoboard'

client = Geckboard::Client.new('your_api_key')
text_widget_data = {
         "item": [
                   {
                     "text": "Unfortunately, as you probably already know, people",
                     "type": 0
                   },
                   {
                     "text": "As you might know, I am a full time Internet",
                     "type": 1
                   }
                 ]
       }
client.push('your_text_widget_key', text_widget_data)
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/geckoboard.

