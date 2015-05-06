require "vesta/version"

module Vesta
  def self.domain_list
   p exec("v-list-dns-domains admin")
  end
end
