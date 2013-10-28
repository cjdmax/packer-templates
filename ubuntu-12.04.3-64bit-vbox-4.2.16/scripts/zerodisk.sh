# Zero out the free space to save space in the final image:
echo "Conserving disk space"
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
