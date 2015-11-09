require 'test_helper'
require 'vesta/api'
require 'vesta/mail_domain'
class VestaTest < Minitest::Test

   def setup
   	@api = Vesta::Api.new
    @mail_domain = Vesta::MailDomain.new
    @mail_domain_args = {name: 'homer', domain: 'simpsons.com', email: 'h@simpsons.com'}
   end

   def test_load_api
     assert_equal 'Homer', @api.name = 'Homer'
   end

   def test_load_mail_domain
     assert_equal 'yandex.ru', @mail_domain.name = 'yandex.ru'
   end
   # Mail Domain TESTS

   def test_add_mail_domain
     assert_equal 'v-add-mail-domain homer simpsons.com',
     @mail_domain.add(@mail_domain_args)
   end

   def test_add_mail_domain_antispam
     assert_equal 'v-add-mail-domain-antispam homer simpsons.com',
     @mail_domain.add_antispam(@mail_domain_args)
   end

   def test_add_mail_domain_antivirus
     assert_equal 'v-add-mail-domain-antivirus homer simpsons.com',
     @mail_domain.add_antivirus(@mail_domain_args)
   end
# -----------------------------------------------------------
   def test_add_mail_domain_catchall
     assert_equal 'v-add-mail-domain-catchall homer simpsons.com h@simpsons.com',
     @mail_domain.add_catchall(@mail_domain_args)
   end

   def test_add_mail_domain_dkim
     #Usage: v-add-mail-domain-dkim USER DOMAIN
   end

   def test_change_mail_domain_catchall
     #Usage: v-change-mail-domain-catchall USER DOMAIN EMAIL
   end

   def test_delete_mail_domain
     #Usage: v-delete-mail-domain USER DOMAIN
   end

   def test_delete_mail_domain_antispam
     #Usage: v-delete-mail-domain-antispam USER DOMAIN
   end

   def test_delete_mail_domain_antivirus
     #Usage: v-delete-mail-domain-antivirus USER DOMAIN
   end

   def test_delete_mail_domain_catchall
     #Usage: v-delete-mail-domain-catchall USER DOMAIN
   end

   def test_delete_mail_domain_dkim
     #Usage: v-delete-mail-domain-dkim USER DOMAIN
   end

   def test_delete_mail_domains
     #Usage: v-delete-mail-domains USER
   end

   #Usage: v-get-mail-domain-value USER DOMAIN KEY

   def test_list_mail_domain
     #Usage: v-list-mail-domain USER DOMAIN [FORMAT]
   end

   def test_list_mail_domain_dkim
     #Usage: v-list-mail-domain-dkim USER DOMAIN [FORMAT]
   end

   def test_list_mail_domain_dkim_dns
     #Usage: v-list-mail-domain-dkim-dns USER DOMAIN [FORMAT]
   end

   def test_list_mail_domains
     #Usage: v-list-mail-domains USER [FORMAT]
   end

   def test_rebuld_mail_domains
     #Usage: v-rebuild-mail-domains USER
   end

   def test_suspend_mail_domain
     #Usage: v-suspend-mail-domain USER DOMAIN
   end

   def test_update_mail_domain_disk
     #Usage: v-update-mail-domain-disk USER DOMAIN
   end

   def test_update_mail_domains_disk
     #Usage: v-update-mail-domains-disk USE
   end

   def test_suspend_mail_domains
     #Usage: v-suspend-mail-domains USER
   end

   def test_unsuspend_mail_domain
     #Usage: v-unsuspend-mail-domain USER DOMAIN
   end

   def test_unsuspend_mail_domains
     #Usage: v-unsuspend-mail-domains USER
   end
end
