class filedemo {
        File {
		owner => 'root',
		mode => '660',
	}
	
	$homedir = "/root"
	$content = "my files content"
	
	file { "${homedir}/myfile.txt":
		content => $content,
	}
	file { "${homedir}/myfile2.txt":
		content => "my file2 content",
	}
	
	file { "${homedir}/myfile3.txt":
		content => "myfile3",
		owner => admin,
	}

	file { '/root/motd':
		ensure => present,
		source => 'puppet:///modules/filedemo/files/filenew',
		content => 'this is my motd file by content attribute',
		owner => root,
		group => root,
		mode => '0644',
	}
	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',
	     }
}
