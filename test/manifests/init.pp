class test {

 file {'/etc/test':
  ensure => file,
  content => $param1,
 }

}
