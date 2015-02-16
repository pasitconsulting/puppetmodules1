class ntp inherits yum {

  package { 'ntp':
        ensure => installed,
        require => Yumrepo["centos6_latest"],
  }

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
