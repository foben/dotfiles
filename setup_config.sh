for fulldir in ./dot_config/*;
do
  dirname=`basename $fulldir`;
  pushd ~/.config > /dev/null
  echo "Creating link for $dirname"
  ln -fs "`realpath ~/dotfiles/dot_config/$dirname/`" "$dirname"
  popd > /dev/null

done
