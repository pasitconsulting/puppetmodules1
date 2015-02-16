class vboxtools inherits yum {

  exec{'vboxtools_prereqs':
   path    => "/usr/bin",
   command => "yum install -y kernel-devel.x86_64  perl compat-glibc-headers kernel-debug-devel libdrm-devel.x86_64 gcc.x86_64 glibc-devel glibc-headers kernel-headers dkms",
  }

}
