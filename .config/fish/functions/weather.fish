function weather -d "shows the weather to a given city eg. Rio de Janeiro"
  if count $argv > /dev/null
    curl -4 "wttr.in/$argv"
  else
    curl -4 "wttr.in/Rio de Janeiro"
  end
end
