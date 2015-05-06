require "vesta/version"

module Vesta

# Add actions 
  def self.add_db(u, db, du, dp)
   user = u
   dbase = db
   duser = du
   dpass = dp
   exec("v-add-database #{user} #{dbase} #{duser} #{dpass}")
  end
  
  def self.add_dns_domain(u, d, i)
   user = u
   domain = d
   ip = i
   exec("v-add-dns-domain USER DOMAIN IP #{user} #{domain} #{ip}")
  end

  def self.add_mail_acc(u, d, a, p)
   user = u
   domain = d
   account = a
   password = p
   exec("v-add-mail-account #{user} #{domain} #{account} #{password}")
  end

  def self.add_mail_acc_alias(u, d, a, al)
   user = u
   domain = d
   account = a
   alia = al
   exec("v-add-mail-account-alias #{user} #{domain} #{account} #{alia}")
  end

  def self.add_mail_acc_replay(u, d, a, m)
   user = u
   domain = d
   account = a
   message = m
   exec("v-add-mail-account-autoreply #{user} #{domain} #{account} #{message}")
  end

  def self.add_mail_acc_forward(u, d, a, f)
   user = u
   domain = d
   account = a
   forward = f
   exec("v-add-mail-account-forward #{user} #{domain} #{account} #{forward}")
  end
  def self.add_mail_acc_forward_onl(u, d, a)
   user = u
   domain = d
   account = a
   exec("v-add-mail-account-fwd-only #{user} #{domain} #{account}")
  end
  def self.add_mail_domain(u, d)
   user = u
   domain = d
   exec("v-add-mail-domain #{user} #{domain}")
  end
  def self.add_mail_antispam(u, d)
   user = u
   domain = d
   exec("v-add-mail-domain-antispam #{user} #{domain}")
  end
  def self.add_mail_antivirus(u, d)
   user = u
   domain = d
   exec("v-add-mail-domain-antivirus #{user} #{domain}")
  end
  def self.add_user(u, p, e)
   user = u
   pass = p
   email = e
   exec("v-add-user #{user} #{pass} #{email}")
  end
  def self.add_web_domain(u, d, i)
   user = u
   domain = d
   ip = i
   exec("v-add-web-domain #{user} #{domain} #{ip} [RESTART]")
  end


# list_actions
  def self.cron_jobs(u)
   user = u
   p exec("v-list-cron-jobs #{user}")
  end

  def self.databases(u)
   user = u
   p exec("v-list-databases #{user}")
  end

  def self.sys_ip
    p exec("v-list-sys-ips")
  end
  
  def self.mail_accounts(u, d)
   user = u
   domain = d
   p exec("v-list-mail-accounts #{user} #{domain}")
  end
  def self.web_domains(u)
   user = u
   p exec("v-list-web-domains #{user}")
  end
  def self.domains_alias(u)
   user = u
   p exec("v-list-domains-alias #{user}")
  end

  def self.domains_proxy(u)
   user = u
   p exec("v-list-web-domains-proxy #{user}")
  end

  def self.domain_ssl(u, d)
   user = u
   domain = d
   p exec("v-list-web-domain-ssl #{user} #{domain}")
  end

  def self.domains_ssl(u)
   user = u
   p exec("v-list-web-domains-ssl #{user}")
  end

end
