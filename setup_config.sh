for fulldir in ./dot_config/*;
do
  dirname=`basename $fulldir`;
  echo "============================================"
  echo "Creating link for $dirname"
  echo "   ($fulldir)"
  echo "============================================"
  config_dir=`realpath ~/.config`
  target=`realpath ~/dotfiles/dot_config/$dirname`
  echo "config_dir: $config_dir"
  echo "target: $target"
  ln -ivs -t "$config_dir" "$target"
  echo ""
done
