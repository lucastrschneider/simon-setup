ALSA_CONFIG_FILE="/etc/modprobe.d/alsa-base.conf"

original_file="${ALSA_CONFIG_FILE}"
backup_file="${ALSA_CONFIG_FILE}.bak"

if [ -f "$original_file" ]; then
    sudo cp "$original_file" "$backup_file"
    sudo echo "options snd-hda-intel model=headset-mic,dell-headset-multi" >> "$original_file"
else
    sudo touch "$original_file"
    sudo echo "options snd-hda-intel model=headset-mic,dell-headset-multi" >> "$original_file"
fi
