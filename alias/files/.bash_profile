# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
alias net='cd /etc/sysconfig/network-scripts'
alias rep='cd /etc/yum.repos.d'
alias web='vi /etc/httpd/conf/httpd.conf'
alias prof='vi /root/.bash_profile'
alias iptables='vi /etc/sysconfig/iptables'
#puppet aliases
alias mod='cd /etc/puppet/modules'
alias site='vi /etc/puppet/manifests/site.pp'
alias conf='vi /etc/puppet.conf'
alias hierad='cd /etc/puppet/hieradata'
alias yaml='vi /etc/hiera.yaml'
alias docs='cd /usr/share/docs'
export PATH
