function switch_yubikey
  set keygrips (gpg --with-keygrip --list-secret-keys $KEYID | grep Keygrip | awk '{print $3}')

  for keygrip in $keygrips
    rm "$HOME/.gnupg/private-keys-v1.d/$keygrip.key" 2> /dev/null
  end

  gpg --card-status
end

# KEYGRIPS="$(gpg --with-keygrip --list-secret-keys $@ | grep Keygrip | awk '{print $3}')"
# for keygrip in $KEYGRIPS
# do
#     rm "$HOME/.gnupg/private-keys-v1.d/$keygrip.key" 2> /dev/null
# done

# gpg --card-status
