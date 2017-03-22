template = ERB.new File.new("#{RAILS_ROOT}/config/authorize_net.yml.erb").read
yml = YAML.load template.result(binding)
AUTHORIZE_NET_CONFIG = yml['default']
AUTHORIZE_NET_CONFIG.merge!(yml[RAILS_ENV]) unless yml[RAILS_ENV].nil?
AUTHORIZE_NET_CONFIG.freeze
