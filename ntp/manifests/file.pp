class ntp::file {

	case $::operatingsystem {
		'centos': { $template = 'ntp.conf' }
		 default: {fail('OS $::operatingsystem is not currentlyused')}

}


	file { '/etc/ntp.conf':
		ensure => file,
		require => Package['ntp'],
		content => template("ntp/${template}.erb"),

	}
}
