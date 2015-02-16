class alias {

 file {'/root/.bash_profile': 
  source => "puppet:///modules/alias/.bash_profile",
  notify => Exec["su -"], 
 }

 exec {"su -":
  path => ["/bin"] 
 }

}
