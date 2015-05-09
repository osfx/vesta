# Vesta

###Welcome to Vesta Gem! 	

 
## Installation
First you need to install [Vesta Control Panel](https://github.com/serghey-rodin/vesta) . After that add this line to your application's Gemfile:

```ruby
gem 'vesta'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vesta

## Usage

#### For example, lets add new web-domain 

```
require 'vesta'

user = 'demo'
domain = 'example.com'
ip = '192.168.0.1'

Vesta.add_web_domain(user, domain, ip)
# => add web domain example.com for demo user with ip 192.168.0

```
#### You can have any names for arguments, the main thing that they were in the same order.
```
require 'vesta'

a = 'demo'
b = 'example.com'
c = '192.168.0.1'

Vesta.add_web_domain(a, b, c)

```

***

## Methods list
```
Vesta.add_database(user, database, dbuser, dbpass)
Vesta.add_dns_domain(user, domain, ip)
Vesta.add_dns_on_web_alias(user, domain, alia)
Vesta.add_mail_account(user, domain, account, password)
Vesta.add_mail_account_alias(user, domain, account, alia)
Vesta.add_mail_account_reply(user, domain, account, message)
Vesta.add_mail_account_autoreplay(user, domain, account, message)
Vesta.add_mail_account_forward(user, domain, account, forward)
Vesta.add_mail_account_fwd_only(user, domain, account)
Vesta.add_mail_domain(user, domain)
Vesta.add_user(user, password, email)
Vesta.add_web_domain(user, domain, ip)
Vesta.add_web_domain_ftp(user, domain, ftp_user, ftp_pass)
Vesta.change_database_owner(detabase, user)
Vesta.change_database_password(user, database, dbpass)
Vesta.change_database_user(user, database, dbuser)
Vesta.change_domain_owner(domain, user)
Vesta.change_user_contact(user, email)
Vesta.change_user_name(user, first_name, last_name)
Vesta.change_user_password(user, password)
Vesta.change_web_domain_ip(user, domain, ip)
Vesta.delete_database(user, database)
Vesta.delete_databases(user)
Vesta.delete_dns_domain(user, domain)
Vesta.delete_dns_domains(user)
Vesta.delete_domain(user, domain)
Vesta.delete_mail_account(user, domain, account)
Vesta.delete_mail_domain(user, domain)
Vesta.delete_mail_domains(user)
Vesta.delete_user(user)
Vesta.delete_web_domain(user, domain)
Vesta.delete_web_domains(user)
Vesta.list_cron_jobs(user)
Vesta.list_databases(user)
Vesta.list_dns_domains(user)
Vesta.list_mail_accounts(user, domain)
Vesta.list_user_domains(user)
Vesta.list_user_ips(user)
Vesta.list_users
Vesta.list_web_domains(user)
Vesta.search_domain_owner(domain)
Vesta.suspend_cron_jobs(user)
Vesta.suspend_mail_account(user, domain, account)
Vesta.suspend_mail_accounts(user, domain)
Vesta.suspend_mail_domain(user, domain)
Vesta.suspend_mail_domains(user)
Vesta.suspend_user(user)
Vesta.suspend_web_domain(user, domain)
Vesta.unsuspend_cron_jobs(user)
Vesta.unsuspend_mail_account(user, domain, account)
Vesta.unsuspend_mail_accounts(user, domain)
Vesta.unsuspend_mail_domain(user, domain)
Vesta.unsuspend_mail_domains(user)
Vesta.unsuspend_user(user)
Vesta.unsuspend_web_domain(user, domain)




```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/vesta/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
