class base::variable {
	file { '/root/var_test.txt':
		content => $topscope,
		owner => 'root',
		group => 'root',
		mode => '0644',
	}
	
	$localvar = "local var"
	$topscope = "new top scope value"

	notify { "${::operatingsystem} is your os": }
	notify { "${topscope} is top scope variable": }
	notify { "${nodescope} is node scope variable": }
	notify { "${localvar} is local scope variable": }	

}
