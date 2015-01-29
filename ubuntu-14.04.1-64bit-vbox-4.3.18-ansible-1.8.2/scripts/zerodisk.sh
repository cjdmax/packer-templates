# Zero out the free space to save space in the final image.

# Conserve disk space.
echo "Conserving disk space"
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
