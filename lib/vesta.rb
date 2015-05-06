require "vesta/version"

module Vesta

  def self.add_database(user, database, dbuser, dbpass)
   exec("v-add-database #{user} #{database} #{dbuser} #{dbpass}")
  end

  def self.add_dns_domain(user, domain, ip)
   exec("v-add-dns-domain #{user} #{domain} #{ip}")
  end
  
  def self.add_mail_account(user, domain, account, password)
   exec("v-add-mail-account #{user} #{domain} #{account} #{password}")
  end

  def self.add_mail_account_alias(user, domain, account, alia)
   exec("v-add-mail-account-alias #{user} #{domain} #{account} #{alia}")
  end

  def self.add_mail_account_reply(user, domain, account, message)
    exec("v-add-mail-account-autoreply #{user} #{domain} #{account} #{message}")
  end

  def self.add_mail_account_autoreplay (user, domain, account, message)
    exec("v-add-mail-account-autoreply #{user} #{domain} #{account} #{message}")
  end
  def self.add_mail_account_forward (user, domain, account, forward)
    exec("v-add-mail-account-forward #{user} #{domain} #{account} #{forward}")
  end
  def self.add_mail_account_fwd_only (user, domain, account)
    exec("v-add-mail-account-fwd-only #{user} #{domain} #{account} ")
  end
  def self.add_mail_domain(user, domain)
    exec("v-add-mail-domain #{user} #{domain}")
  end
  def self.add_user (user, password, email)
    exec("v-add-user #{user} #{password} #{email}  ")
  end
  def self.add_web_domain (user, domain, ip)
    exec("v-add-web-domain #{user} #{domain} #{ip} [RESTART]")
  end
  def self.add_web_domain_ftp (user, domain, ftp_user, ftp_pass)
    exec("v-add-web-domain-ftp #{user} #{domain} #{ftp_user} #{ftp_pass} ")
  end
  # CHANGE
  def self.change_database_owner (detabase, user)
    exec("v-change-database-owner #{database} #{user} ")
  end

  def self.change_database_password (user, database, dbpass)
    exec("v-change-database-password #{user} #{database} #{dbpass} ")
  end

  def self.change_database_user (user, database, dbuser)
    exec("v-change-database-user #{user} #{database} #{dbuser}")
  end

  def self.change_domain_owner (domain, user)
    exec("v-change-domain-owner #{domain} #{user} ")
  end

  def self.change_mail_account_password (user, domain, account, password)
    exec("v-change-mail-account-password #{user} #{domain} #{account} #{password}")
  end

  def self.change_user_contact (user, email)
    exec("v-change-user-contact #{user} #{email} ")
  end

  def self.change_user_name (user, first_name, last_name)
    exec("v-change-user-name #{user} #{first_name} #{last_name}")
  end

  def self.change_user_password (user, password)
    exec("v-change-user-password #{user} #{password} ")
  end

  def self.change_web_domain_ip (user, domain, ip)
    exec("v-change-web-domain-ip #{user} #{domain} #{ip} [RESTART] ")
  end


  #DELETE
  def self.delete_database (user, database)
    exec("v-delete-database #{user} #{database}")
  end

  def self.delete_databases (user)
    exec("v-delete-databases #{user}")
  end

  def self.delete_dns_domain (user, domain)
    exec ("v-delete-dns-domain #{user} #{domain} ")
  end

  def self.delete_dns_domains (user)
    exec ("v-delete-dns-domains #{user} ")
  end

  def self.delete_domain (user, domain)
    exec ("v-delete-domain #{user} #{domain} ")
  end

  def self.delete_mail_account (user, domain, account)
    exec ("v-delete-mail-account #{user} #{domain} #{account} ")
  end

  def self.delete_mail_domain (user, domain)
    exec ("v-delete-mail-domain #{user} #{domain} ")
  end

  def self.delete_mail_domains (user)
    exec ("v-delete-mail-domains #{user}")
  end

  def self.delete_user (user)
    exec ("v-delete-user #{user}")
  end

  def self.delete_web_domain (user, domain)
    exec ("v-delete-web-domain #{user} #{domain}")
  end

  def self.delete_web_domains (user)
    exec ("v-delete-web-domains #{user}")
  end

  # LISTS
  def self.list_cron_jobs (user)
    exec ("v-list-cron-jobs #{user}")
  end

  def self.list_databases (user)
    exec ("v-list-databases #{user}")
  end

  def self.list_dns_domains (user)
    exec ("v-list-dns-domains #{user}")
  end

  def self.list_mail_accounts (user, domain)
    exec ("v-list-mail-accounts #{user} #{domain}")
  end

  def self.list_user_domains (user)
    exec ("v-list-mail-domains #{user}")
  end

  def self.list_user_ips (user)
    exec ("v-list-user-ips #{user}")
  end

  def self.list_users
    exec ("v-list-users")
  end

  def self.list_web_domains (user)
    exec ("v-list-web-domains #{user}")
  end

  # SEARCH
  def self.search_domain_owner (domain)
    exec ("v-search-domain-owner #{domain} ")
  end

  # SUSPEND
  def self.suspend_cron_jobs (user)
    exec ("v-suspend-cron-jobs #{user}")
  end
  def self.suspend_mail_account (user, domain, account)
    exec ("v-suspend-mail-account #{user} #{domain} #{account}")
  end
  def self.suspend_mail_accounts (user, domain)
    exec (" v-suspend-mail-accounts #{user} #{domain} ")
  end
  def self.suspend_mail_domain (user, domain)
    exec ("v-suspend-mail-domain #{user} #{domain} ")
  end
  def self.suspend_mail_domains (user)
    exec ("v-suspend-mail-domains #{user} ")
  end
  def self.suspend_user (user)
    exec ("v-suspend-user #{user} [RESTART] ")
  end
  def self.suspend_web_domain (user, domain)
    exec ("v-suspend-web-domain #{user} #{domain} [RESTART]")
  end
  # UNSUSPEND
  def self.unsuspend_cron_jobs (user)
    exec ("v-unsuspend-cron-jobs #{user}")
  end

  def self.unsuspend_mail_account (user, domain, account)
    exec ("v-unsuspend-mail-account #{user} #{domain} #{account}")
  end

  def self.unsuspend_mail_accounts (user, domain)
    exec (" v-unsuspend-mail-accounts #{user} #{domain} ")
  end

  def self.unsuspend_mail_domain (user, domain)
    exec ("v-unsuspend-mail-domain #{user} #{domain} ")
  end

  def self.unsuspend_mail_domains (user)
    exec ("v-unsuspend-mail-domains #{user} ")
  end

  def self.unsuspend_user (user)
    exec ("v-unsuspend-user #{user} [RESTART] ")
  end

  def self.unsuspend_web_domain (user, domain)
    exec ("v-unsuspend-web-domain #{user} #{domain} [RESTART]")
  end

end