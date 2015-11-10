require 'test_helper'
require 'vesta/api'
require 'vesta/mail_domain'
class VestaTest < Minitest::Test

   def setup
   	@api = Api.new
    @mail_domain = Vesta::MailDomain.new
    @args = {name: 'homer', domain: 'simpsons.com', email: 'h@simpsons.com'}
   end

  #  def test_load_api
  #    assert_equal 'Homer', @api.name = 'Homer'
  #  end

   def test_load_mail_domain
     assert_equal 'yandex.ru', @mail_domain.name = 'yandex.ru'
   end
#    # Mail simpsons.com TESTS
#
   def test_add_mail_domain
     assert_equal 'v-add-mail-domain homer simpsons.com',
     @mail_domain.add(@args)
   end

   def test_add_mail_domain_antispam
     assert_equal 'v-add-mail-domain-antispam homer simpsons.com',
     @mail_domain.add_antispam(@args)
   end

   def test_add_mail_domain_antivirus
     assert_equal 'v-add-mail-domain-antivirus homer simpsons.com',
     @mail_domain.add_antivirus(@args)
   end
# -----------------------------------------------------------
   def test_add_mail_domain_catchall
     assert_equal 'v-add-mail-domain-catchall homer simpsons.com h@simpsons.com',
     @mail_domain.add_catchall(@args)
   end

   def test_add_mail_domain_dkim
     assert_equal 'v-add-mail-domain-dkim homer simpsons.com',
     @mail_domain.add_dkim(@args)
   end

   def test_change_mail_domain_catchall
     assert_equal 'v-change-mail-domain-catchall homer simpsons.com h@simpsons.com',
     @mail_domain.change_catchall(@args)
   end

   def test_delete_mail_domain
     assert_equal 'v-delete-mail-domain homer simpsons.com',
     @mail_domain.delete(@args)
   end

   def test_delete_mail_domain_antispam
     assert_equal 'v-delete-mail-domain-antispam homer simpsons.com',
     @mail_domain.delete_antispam(@args)
   end

  #  def test_delete_mail_simpsons.com_antivirus
  #    #Usage: v-delete-mail-simpsons.com-antivirus homer simpsons.com
  #  end
   #
  #  def test_delete_mail_simpsons.com_catchall
  #    #Usage: v-delete-mail-simpsons.com-catchall homer simpsons.com
  #  end
   #
  #  def test_delete_mail_simpsons.com_dkim
  #    #Usage: v-delete-mail-simpsons.com-dkim homer simpsons.com
  #  end
   #
  #  def test_delete_mail_simpsons.coms
  #    #Usage: v-delete-mail-simpsons.coms homer
  #  end
   #
  #  #Usage: v-get-mail-simpsons.com-value homer simpsons.com KEY
   #
  #  def test_list_mail_simpsons.com
  #    #Usage: v-list-mail-simpsons.com homer simpsons.com [FORMAT]
  #  end
   #
  #  def test_list_mail_simpsons.com_dkim
  #    #Usage: v-list-mail-simpsons.com-dkim homer simpsons.com [FORMAT]
  #  end
   #
  #  def test_list_mail_simpsons.com_dkim_dns
  #    #Usage: v-list-mail-simpsons.com-dkim-dns homer simpsons.com [FORMAT]
  #  end
   #
  #  def test_list_mail_simpsons.coms
  #    #Usage: v-list-mail-simpsons.coms homer [FORMAT]
  #  end
   #
  #  def test_rebuld_mail_simpsons.coms
  #    #Usage: v-rebuild-mail-simpsons.coms homer
  #  end
   #
  #  def test_suspend_mail_simpsons.com
  #    #Usage: v-suspend-mail-simpsons.com homer simpsons.com
  #  end
   #
  #  def test_update_mail_simpsons.com_disk
  #    #Usage: v-update-mail-simpsons.com-disk homer simpsons.com
  #  end
   #
  #  def test_update_mail_simpsons.coms_disk
  #    #Usage: v-update-mail-simpsons.coms-disk USE
  #  end
   #
  #  def test_suspend_mail_simpsons.coms
  #    #Usage: v-suspend-mail-simpsons.coms homer
  #  end
   #
  #  def test_unsuspend_mail_simpsons.com
  #    #Usage: v-unsuspend-mail-simpsons.com homer simpsons.com
  #  end
   #
  #  def test_unsuspend_mail_simpsons.coms
  #    #Usage: v-unsuspend-mail-simpsons.coms homer
  #  end
end
