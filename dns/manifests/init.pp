class dns {

 package{'bind-utils':
  ensure  => installed,
  require => Yumrepo["centos6_latest"],
 }

 file{'/etc/dhcp/dhclient-enter-hooks':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => 0755,
    source => "puppet:///modules/dns/dhclient-enter-hooks",
 }

 file{'/etc/resolv.conf':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => 0644,
    source => "puppet:///modules/dns/resolv.conf",
    require => Service['network'],
 }

 service{'network':
    restart => yes, 
 }

}
