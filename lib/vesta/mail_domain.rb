module Vesta
  class MailDomain < Api

    attr_accessor :name, :password, :domain, :email

    #v-add-mail-domain
    def add(**args)
        "v-add#{@c} #{args[:name]} #{args[:domain]}"
    end

    def add_antispam(**args)
      "v-add#{@c}-antispam #{args[:name]} #{args[:domain]}"
    end

    def add_antivirus(**args)
      "v-add#{@c}-antivirus #{args[:name]} #{args[:domain]}"
    end

    def add_catchall(**args)
      "v-add#{@c}-catchall #{args[:name]} #{args[:domain]} #{args[:email]}"
    end

    def add_dkim(**args)
      "v-add#{@c}-dkim #{args[:name]} #{args[:domain]}"
    end

    def change_catchall(**args)
      "v-change#{@c}-catchall #{args[:name]} #{args[:domain]} #{args[:email]}"
    end

    def delete(**args)
      "v-delete#{@c} #{args[:name]} #{args[:domain]}"
    end

    def delete_antispam(**args)
      "v-delete#{@c}-antispam #{args[:name]} #{args[:domain]}"
    end


  end
end
