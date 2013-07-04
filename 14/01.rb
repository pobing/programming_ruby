# ARGV 全局数组
ARGV.each {|argv| p argv}

ruby test.rb "hello ruby" "a1" "bc"
# 环境变量
# 1.9.2p320 :037 > ENV['SHELL']
#  => "/bin/bash"
# 1.9.2p320 :038 > ENV['HOME']
#  => "/home/dong"
# 1.9.2p320 :039 > ENV['USER']
#  => "dong"
# 1.9.2p320 :040 > ENV.keys
#  => ["SSH_AGENT_PID", "rvm_bin_path", "CLUTTER_IM_MODULE", "GEM_HOME", "GPG_AGENT_INFO", "rvm_error_clr", "TERM", "SHELL", "rvm_notify_clr", "XDG_SESSION_COOKIE", "IRBRC", "GNOME_KEYRING_CONTROL", "MY_RUBY_HOME", "GTK_MODULES", "JRE_HOME", "USER", "LS_COLORS", "DESKTOP_AUTOSTART_ID", "__array_start", "XDG_SESSION_PATH", "rvm_reset_clr", "rvm_path", "XDG_SEAT_PATH", "SSH_AUTH_SOCK", "SESSION_MANAGER", "DEFAULTS_PATH", "escape_flag", "XDG_CONFIG_DIRS", "rvm_prefix", "PATH", "DESKTOP_SESSION", "QT_IM_MODULE", "PWD", "JAVA_HOME", "XMODIFIERS", "GNOME_KEYRING_PID", "LANG", "MANDATORY_PATH", "_second", "UBUNTU_MENUPROXY", "COMPIZ_CONFIG_PROFILE", "GDMSESSION", "rvm_env_string", "rvm_version", "rvm_debug_clr", "HOME", "SHLVL", "rvm_ruby_string", "GNOME_DESKTOP_SESSION_ID", "_first", "LOGNAME", "GEM_PATH", "CLASSPATH", "QT4_IM_MODULE", "XDG_DATA_DIRS", "DBUS_SESSION_BUS_ADDRESS", "LESSOPEN", "DISPLAY", "rvm_warn_clr", "XDG_CURRENT_DESKTOP", "GTK_IM_MODULE", "RUBY_VERSION", "LESSCLOSE", "XAUTHORITY", "_", "LINES", "COLUMNS"]
# 1.9.2p320 :041 > ENV.keys.size
#  => 67
# 1.9.2p320 :042 > ENV.keys[0..7]
#  => ["SSH_AGENT_PID", "rvm_bin_path", "CLUTTER_IM_MODULE", "GEM_HOME", "GPG_AGENT_INFO", "rvm_error_clr", "TERM", "SHELL"]
# 1.9.2p320 :043 > ENV['GEM_HOME']
#  => "/home/dong/.rvm/gems/ruby-1.9.2-p320"
# 1.9.2p320 :044 > ENV['rvm_bin_path']
#  => "/home/dong/.rvm/bin"

#查找模块
ruby -e  'puts $:'

# dong@jidong:/data/projects/programming_ruby/14$ ruby -e  'puts $:'
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/site_ruby/1.9.1
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/site_ruby/1.9.1/i686-linux
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/site_ruby
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/vendor_ruby/1.9.1
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/vendor_ruby/1.9.1/i686-linux
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/vendor_ruby
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/1.9.1
# /home/dong/.rvm/rubies/ruby-1.9.2-p320/lib/ruby/1.9.1/i686-linux
