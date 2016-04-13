module Vesta
  class API
    # attr_reader :methods

    def initialize
      @all_methods = Base.all_methods
    end

    def start#(*args)
      @all_methods.each do |m|
        self.class.send(:define_method, "#{m.to_s.gsub("-","_")}") do |arg|
          if arg.class == Array
            "#{m} " + arg.join(" ")
          elsif arg.class == String
           "#{m} " + arg
          else
            "#{m} "
          end
        end
      end
    end



    # def load_methods
    #   methods
    # end


    # def add_database(*params)
    #   puts "v-#{__callee__.to_s.gsub("_","-")} #{params.join(" ")}"
    # end
    #
    # # def methods
    # #   %w(
    # #   add_database
    # #   add_dns_domain
    # #   add_mail_account
    # #   ).freeze
    # # end
    #
    # def normalize
    #   @m = methods.join(" ")
    #   @m.gsub("_", "-").split
    # end
    #
    # define_method("add_task") do |m|
    #   puts "v-#{__callee__.to_s.gsub("_","-")} #{m.join(" ")}"
    # end
    # private

    # def all_methods
    #   @all_methods = Base.all_methods
    # end
  end
end
