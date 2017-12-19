debug=$(config debug)

if [[ $debug ]]; then
  set -x
fi

declare -a packages=$( config list )
only_build=$( config only_build )
user=$( config user )
build_root_dir=$( config build_root )

pacman -Sy --noconfirm --needed base-devel yajl git

install -d -m 777 $build_root_dir
cd $build_root_dir

for package in ${packages[@]}; do
  rm -rf $build_root_dir/${package}
  install -d -m 777 $build_root_dir/${package}
  su $user -s /bin/bash -c "git clone https://aur.archlinux.org/$package.git" 
  cd $build_root_dir/${package}
  su $user -s /bin/bash -c "makepkg --noconfirm -s"

  if [[ -z $only_build ]]; then
    pacman -U --noconfirm ./*.pkg.tar.xz
  fi

  cd ..
done
