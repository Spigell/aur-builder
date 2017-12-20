set_spl %( 'dev-aur-builder' => 'https://github.com/Spigell/aur-builder.git' );

task_run 'install zef', 'dev-aur-builder', %(
   list => ( 'chef-dk' ),
   user => 'vagrant',
   debug => 'true',
   build_root => '/aur-build',
   install => 'true',
   output => '/tmp/chef'
);
