class fstab {

 file{'/etc/fstab':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => 0644,
    source => "puppet:///modules/fstab/fstab",
 }

}
