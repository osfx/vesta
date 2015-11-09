module Vesta
  class MailDomain

    attr_accessor :name, :password, :domain, :email
    def initialize
      @class = '-mail-domain'
    end
    #v-add-mail-domain
    def add(**args)
      "v-add#{@class} #{args[:name]} #{args[:domain]}"
    end

    def add_antispam(**args)
      "v-add#{@class}-antispam #{args[:name]} #{args[:domain]}"
    end
    def add_antivirus(**args)
      "v-add#{@class}-antivirus #{args[:name]} #{args[:domain]}"
    end
    def add_catchall(**args)
      "v-add#{@class}-catchall #{args[:name]} #{args[:domain]} #{args[:email]}"
    end
  end
end
