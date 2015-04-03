class ntp inherits yum {

#this module is great
#this module just got better

  package { 'ntp':
        ensure => installed,
        require => Yumrepo["centos6_latest"],
  }
  
  #testing

 file { '/etc/ntp.conf':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => 0644, 
    source => "puppet:///modules/ntp/ntp.conf",
    require   => Package['ntp'],
 }

 service { 'ntp':
        name      => ntpd,
        ensure    => running,
        enable    => true,
        require   => Package['ntp'],
 }


}
