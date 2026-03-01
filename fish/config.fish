function fish_greeting
    echo Hi!
 end
function fish_prompt --description "Write out the prompt"
  set exit_status $status
  
  set_color $fish_color_cwd
  if [ $PWD = $HOME ]
    set cwd "~"
  else
    set cwd (basename $PWD)
  end
  echo -n "$cwd "

  if [ $exit_status -eq 0 ]
    set_color normal
  else
    set_color $fish_color_error
  end

  if [ $USER = "root" ]
    echo -n "# "
  else
    echo -n "> "
  end

  set_color normal
end
