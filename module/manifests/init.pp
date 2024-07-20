class my_module {
  # Example: Install a package
  package { 'git':
    ensure => installed,
  }

  # Example: Create a file
  file { '/tmp/example_file.txt':
    ensure  => file,
    content => 'This is an example file managed by Puppet.',
  }

  # Example: Manage a service (e.g., Jenkins agent service)
  service { 'jenkins-agent':
    ensure    => running,
    enable    => true,
    require   => Package['git'],
  }
}