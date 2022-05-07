#!/usr/bin/bash
# pw-link ee_soe_output_level:output_FL alsa_output.usb-Logitech_Logitech_G430_Gaming_Headset-00.analog-stereo:playback_FL
# pw-link ee_soe_output_level:output_FR alsa_output.usb-Logitech_Logitech_G430_Gaming_Headset-00.analog-stereo:playback_FR
# pw-link ee_soe_output_level:output_FL alsa_output.pci-0000_38_00.6.analog-stereo:playback_FL
# pw-link ee_soe_output_level:output_FR alsa_output.pci-0000_38_00.6.analog-stereo:playback_FR


disconnect_all() {
	pw-link -d ee_soe_output_level:output_FL alsa_output.pci-0000_38_00.6.analog-stereo:playback_FL
	pw-link -d ee_soe_output_level:output_FR alsa_output.pci-0000_38_00.6.analog-stereo:playback_FR

	pw-link -d ee_soe_output_level:output_FL alsa_output.usb-Logitech_Logitech_G430_Gaming_Headset-00.analog-stereo:playback_FL
	pw-link -d ee_soe_output_level:output_FR alsa_output.usb-Logitech_Logitech_G430_Gaming_Headset-00.analog-stereo:playback_FR
}

connect() {
	pw-link ee_soe_output_level:output_FL "$1:playback_FL"
	pw-link ee_soe_output_level:output_FR "$1:playback_FR"
}

target_dev=$1
#recieve input from command line, ONLY INPUT THE NAME OF DEVICE, without :playback_FL/FR
disconnect_all
#dc all -> a silver bullet
connect $target_dev
#connect whatcha need

