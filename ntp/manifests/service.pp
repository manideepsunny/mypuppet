class ntp::service {
	service { 'ntpd':
		ensure => running,
		enable => true,
		subscribe => File ['/etc/ntp.conf']
	}

}
