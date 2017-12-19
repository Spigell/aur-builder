set_spl %( 'dev-aur-builder' => 'https://github.com/Spigell/aur-builder.git' );

task_run 'install zef', 'dev-aur-builder', %(
   list => ( 'chef-dk' ),
   user => 'vagrant',
   debug => 'true',
   build_root => '/home/vagrant'
);
task_run 'install zef', 'dev-aur-builder', %(
   list => ( 'zef' ),
   user => 'vagrant',
   debug => 'true',
);
