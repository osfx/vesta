module Vesta
  class API
    attr_reader :user

    def initialize(user)
      @user = user
    end

    def add_database(*params)
      puts "v-#{__callee__.to_s.gsub("_","-")} #{params.join(" ")}"
    end

    def methods
      %w(
      add_database
      add_dns_domain
      add_mail_account
      ).freeze
    end

    def normalize
      @m = methods.join(" ")
      @m.gsub("_", "-").split
    end

    define_method("add_task") do |m|
      puts "v-#{__callee__.to_s.gsub("_","-")} #{m.join(" ")}"
    end
  end
end
