#!/usr/bin/env bash

# https://github.com/microsoft/WSL/issues/5177#issuecomment-624926928


# mount external /home folder from Alpine distro
# if [ ! -d /mnt/wsl/shared ]; then
#     mkdir /mnt/wsl/shared
#     wsl.exe -d arch -u root mount --bind /home/jizu/shared /mnt/wsl/shared
#     wsl.exe -d Ubuntu-20.04 -u root mount --bind /home/jizu/shared /mnt/wsl/shared
# fi


# wsl.exe -d arch -u root umount  /mnt/wsl/shared

# https://stackoverflow.com/questions/65815011/moving-files-between-different-wsl2-instances
if [[ -n "${WSL_DISTRO_NAME}" ]]; then
   if [[ -d "/mnt/wsl/${WSL_DISTRO_NAME}" ]]; then
      ls "/mnt/wsl/${WSL_DISTRO_NAME}"
   else 
      mkdir "/mnt/wsl/${WSL_DISTRO_NAME}"
      # note the terminating / on the directory name below!
      wsl.exe -d ${WSL_DISTRO_NAME} -u root mount --bind / "/mnt/wsl/${WSL_DISTRO_NAME}/"
   fi
fi
