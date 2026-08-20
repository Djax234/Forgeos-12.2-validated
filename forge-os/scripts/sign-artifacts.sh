# Add to forge-os/scripts/sign-artifacts.sh
echo "[Forge] Signing Glimmer model for verified boot..."
find /usr/share/models/muse-glimmer -type f -exec sha256sum {} \; > /usr/share/models/muse-glimmer/MANIFEST
gpg --detach-sign --armor -u forge@ramaedge /usr/share/models/muse-glimmer/MANIFEST
# MANIFEST.sig checked by ExecCondition above
