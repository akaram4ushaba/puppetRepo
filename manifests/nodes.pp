#node 'cookbook' {
 # include apache
#}


#node 'cookbook' {
# apache::vhost { 'cat-pictures.com': }
#}



#node 'cookbook' {}

#node 'cookbook' {
 # file { '/etc/motd':
  #  content => "Puppet power!\n",
 # }
#}


node 'cookbook' {
file { '/tmp/hello':
content => "Hello, world attune hi\n",
} 
}

#node 'cookbook' {
 # include memcached
#}

#node 'cookbook' {
#include puppet 
#}

#array example
#node 'cookbook'{
#$packages = [ 'ruby1.8-dev',
 #             'ruby1.8',
  #            'ri1.8',
   #           'rdoc1.8',
    #          'irb1.8',
     #         'libreadline-ruby1.8',
      #        'libruby1.8',
       #       'libopenssl-ruby' ]

#package { $packages: ensure => installed }
#}

# language checking if els

#node 'cookbook'
#{

#if $::operatingsystem == 'Ubuntu' {
 # notify { 'Running on Ubuntu': }
#} else {
 # notify { 'Non-Ubuntu system detected. Please upgrade
  #  to Ubuntu immediately.': }
#}
#}


#node 'cookbook' {
 # include admin::ntp
#

#}



#node 'cookbook' {
 # include admin::stages
#}







#node 'base' {
#  include admin::basics
 # include admin::ssh
 # include admin::ntp
 # include puppet::client
#  include backup::client
#}

#node 'cookbook' inherits 'base' {
 # notify { 'I get everything in base': }
#}


#node 'cookbook'{

#include admin::info

#}



#node 'cookbook' {

#$message = generate('/usr/local/bin/message.rb')
#notify { $message: }

#}


#node 'cookbook' {
#$source = 'Hello Jerry'
#$target = 'Hello... Newman'
#$argstring = shellquote($source, $target)
#$command = "/bin/mv ${argstring}"
#notify { $command: }

#}


#node 'cookbook' {
 # append_if_no_such_line { 'enable-ip-conntrack':
  #  file => '/etc/modules',
   # line => 'ip_conntrack',
  #}
#}



#node 'cookbook' {
 # include admin::rsyncdconf

  #file { '/etc/rsyncd.d/myapp.conf':
   # ensure  => present,
    #source  => 'puppet:///modules/admin/myapp.rsync',
    #require => File['/etc/rsyncd.d'],
    #notify  => Exec['update-rsyncd.conf'],
 # }
#}


#node 'cookbook' {
 # $mysql_password = 'secret'
  #file { '/usr/local/bin/backup-mysql':
   # content => template('admin/backup-mysql.sh.erb'),
   # mode    => '0755',
  #}
#}

# array template
#node 'cookbook' {
 # $ipaddresses = ['192.168.0.1',
  #                '158.43.128.1',
   #               '10.0.75.207' ]

  #file { '/tmp/addresslist.txt':
 #   content => template('admin/addresslist.erb')
  #}
#}

#installing package from third party
#node 'cookbook' {
 # include admin::percona_repo

  #package { 'percona-server-server-5.5':
   # ensure  => installed,
  #  require => Class['admin::percona_repo'],
 # }
#}


#building package automatically 
#node 'cookbook' {
 # exec { 'install-httperf':
  #  cwd     => '/root',
   # command => '/usr/bin/wget https://httperf.googlecode.com/files/httperf-0.9.0.tar.gz && /bin/tar xvzf httperf-0.9.0.tar.gz && cd httperf-0.9.0 && ./configure && make all && make install',
    #creates => '/usr/local/bin/httperf',
    #timeout => 0,
  #}
#}


#checking version

#node 'cookbook' {
 # $app_version = '1.2.14'
  #$min_version = '1.2.10'

  #if versioncmp($app_version, $min_version) >= 0 {
   # notify { 'Version OK': }
  #} else {
   # notify { 'Upgrade needed': }
  #}
#}



#virtual


#node 'cookbook' {
 # include app::facesquare
  #include app::flipr
#}


#managing user

#node 'cookbook' {
 # include user::virtual
 # include user::sysadmins
 # include user::developers
#}

#managing user from ssh access


#node 'cookbook' {
 # include user::virtual
  #include user::sysadmins
#}

#cron  distribution job
#node 'cookbook' {
  #cron { 'run-backup':
    #ensure  => present,
    #command => '/usr/local/bin/backup',
   # hour    => inline_template('<%= @hostname.sum % 24 %>'),
  #  minute  => '00',
 # }
#}

#Using schedules to limit when resources can be applied


#node 'cookbook' {
 # schedule { 'outside-office-hours':
  #  period => daily,
   # range  => ['17:00-23:59','00:00-09:00'],
    #repeat => 1,
  #}

  #exec { '/bin/echo Doing some maintenance':
  #  schedule => 'outside-office-hours',
 # }
#}


#managing Firewall

#node 'cookbook' {
 # firewall::role { 'webserver': }
#}

#Creating custom fact

#node 'cookbook' {
 # notify { $::hello: }
#}

#Setting facts as environment variables


#node 'cookbook' {
 # notify { "The moon is $::moonphase": }
#}


#creating function

#node 'cookbook' {
 # cron { 'randomised cron job':
  #  command => '/bin/echo Hello, world >>/tmp/hello.txt',
   # hour    => '*',
    #minute  => random_minute(),
 # }
#}

#generating graph

#node cookbook {
 # include admin::ntp
#}


#node 'cookbook' {
 # include fog
#}

#node 'devbox' {
 # file { '/etc/motd':
  #  content => "Puppet power!\n",
  #}
#}
