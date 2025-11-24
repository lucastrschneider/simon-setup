ALSA_CONFIG_FILE="/etc/modprobe.d/alsa-base.conf"

original_file="${ALSA_CONFIG_FILE}"
backup_file="${ALSA_CONFIG_FILE}.bak"

cp "$original_file" "$backup_file"
echo "options snd-hda-intel model=headset-mic,dell-headset-multi" >> "$original_file"