# Copyright (c) TUXEDO Computers GmbH <tux@tuxedocomputers.com>
# This file is part of TUXEDO Tomte.
#
# TUXEDO Tomte is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# TUXEDO Tomte is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with TUXEDO Tomte. If not, see <https://www.gnu.org/licenses/>.

package Tomte::Presets;

use strict qw(vars subs);
use warnings;
use 5.010;

use parent 'Exporter';
our @EXPORT_OK = qw( supportedOS essentialRepos otherRepos kernels devices initialModuleSettings lockFiles postConfPrograms );

# for Translations
use Locale::TextDomain ('tomte', '/usr/share/locale');
use Locale::TextDomain qw(tomte);
use File::Slurp qw(append_file write_file read_file edit_file);

# for debugging
use Data::Dumper;


our %SUPPORTED_OS = (
	"TUXEDO OS" => ['24.04'],
	"TUXEDO_OS Plasma" => ['24.04'],
	"KDE neon" => ['24.04'],
	"Ubuntu" => ['24.04'],
	"Linux Mint" => ['22', '22.1', '22.2'],
	"elementary OS" => ['8']
);

our %ESSENTIAL_REPOS = (
	"noble" => {
		"deb" => {
			"content" => ["Types: deb\n".
							"URIs: https://deb.tuxedocomputers.com/ubuntu\n".
							"Suites: noble\n".
							"Components: main\n".
							"Signed-By: /usr/share/keyrings/tuxedo-archive-keyring.gpg\n"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-computers.sources"
		}
	},

	"TUXEDO OS 24.04" => {
		"deb" => {
			"content" => ["Types: deb\n".
							"URIs: https://deb.tuxedocomputers.com/ubuntu\n".
							"Suites: noble\n".
							"Components: main\n".
							"Signed-By: /usr/share/keyrings/tuxedo-archive-keyring.gpg\n"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-computers.sources"
		}
	}
);

our %OTHER_REPOS = (
	"noble" => {
		"mirrors" => {
			"content" => [
				"Types: deb\n".
				"URIs: https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu\n".
				"Suites: noble noble-updates\n".
				"Components: main restricted universe multiverse\n".
				"Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg\n".
				"\n".
				"Types: deb\n".
				"URIs: https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu\n".
				"Suites: noble-security\n".
				"Components: main restricted universe multiverse\n".
				"Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg\n"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-ubuntu-mirrors.sources"
		}
	},

	"TUXEDO OS 24.04" => {
		"mirrors" => {
			"content" => [
				"Types: deb\n".
				"URIs: https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu\n".
				"Suites: noble noble-updates\n".
				"Components: main restricted universe multiverse\n".
				"Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg\n".
				"\n".
				"Types: deb\n".
				"URIs: https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu\n".
				"Suites: noble-security\n".
				"Components: main restricted universe multiverse\n".
				"Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg\n"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-ubuntu-mirrors.sources"
		}
	}
);

our %KERNELS = (
	'noble' => {
		'index' => '3',
		'linux-tuxedo-24.04' => 'linux-tuxedo-24.04'
	}
);






###############################################################################
# Each device has
# - a unique ID
# - one or more model names (array)
# - one or more board names (array)
# - the fixes that apply (array)
# - which Ubuntu flavours (array)
# - PCI device (if available, regex)
# - CPU (if needed)
# - Kernel (if needed, regex)
# - display (if needed, as array)
# - USB device (if needed)
# default kernel tuxeookernel2404 is not listed
# only kernels that deviate from the default are listed
#
our %DEVICES = (
	'1' => {
		model => ['TUXEDO Aura 15 Gen1'],
		board_name => ['NL5xRU', 'AURA1501'],
		fix => ['amdxhcihcdusbquirksuspendfix'],
		flavour => ['24.04'],
		pci_id => '1558:a500',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'2' => {
		model => ['TUXEDO Book BA15 Gen1'],
		board_name => ['PF5PU1G'],
		fix => ['nobootonbattery', 'tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'3' => {
		model => ['TUXEDO Book BC15 Gen10', 'TUXEDO Book BC17 Gen10'],
		board_name => ['NHxxRZQ'],
		fix => ['r8168dkms'],
		flavour => ['24.04'],
		pci_id => '1558:8562',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'4' => {
		model => ['TUXEDO Book BX1507'],
		board_name => ['N350TW'],
		fix => ['tuxedorestoreaudiofix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'5' => {
		model => ['TUXEDO Book DX1508', 'TUXEDO Book DX1708'],
		board_name => ['N8xEJEK'],
		fix => ['backlightfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'AUO Model 12701 Serial Number 585803690',
		usb_device => q{}
	},
	'6' => {
		model => ['TUXEDO Book XA15 Gen10'],
		board_name => ['NH5xAx'],
		fix => ['corefix'],
		flavour => ['24.04'],
		pci_id => '1558:50f0',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'10' => {
		model => ['TUXEDO Book XUX7 Gen13'],
		board_name => ['X170KM-G'],
		fix => ['thunderboltbootdelayfix'],
		flavour => ['24.04'],
		pci_id => '1558:7715',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'11' => {
		model => ['TUXEDO EduBook 15 Gen2'],
		board_name => ['EDUBOOK1502'],
		fix => ['amdxhcihcdusbquirksuspendfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'12' => {
		model => ['TUXEDO InfinityBook 14 v2'],
		board_name => ['X35R'],
		fix => ['elantechtouchpadfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'13' => {
		model => ['TUXEDO InfinityBook Pro 14 Gen6'],
		board_name => ['PHxTQx1', 'PHxTxX1', 'PH4TQx1'],
		fix => ['lightdmlogindcheckgraphicalfix', 'tuxedotouchpadswitch', 'i915enablepsrfix', 'earlyloadbacklightcontrolfix'],
		flavour => ['24.04'],
		pci_id => '1d05:1132',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'17' => {
		model => ['TUXEDO Polaris Gen1 AMD NVIDIA GTX1650Ti'],
		board_name => ['POLARIS1501A1650TI', 'POLARIS1701A1650TI'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'amdgpuwithnvidiafix', 'tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'18' => {
		model => ['TUXEDO Polaris Gen1 AMD NVIDIA RTX2060'],
		board_name => ['POLARIS1501A2060', 'POLARIS1701A2060'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'amdgpuwithnvidiafix', 'tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'19' => {
		model => ['TUXEDO Polaris Gen1 Intel NVIDIA GTX1650Ti'],
		board_name => ['POLARIS1501I1650TI', 'POLARIS1701I1650TI'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'20' => {
		model => ['TUXEDO Polaris Gen1 Intel NVIDIA RTX2060'],
		board_name => ['POLARIS1501I2060', 'POLARIS1701I2060'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'21' => {
		model => ['TUXEDO Pulse 14 Gen1'],
		board_name => ['PULSE1401'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'22' => {
		model => ['TUXEDO Pulse 15 Gen1'],
		board_name => ['PULSE1501'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'23' => {
		model => ['TUXEDO Stellaris Gen2 AMD', 'TUXEDO Polaris Gen2 AMD'],
		board_name => ['GMxNGxx'],
		fix => ['tuxedotouchpadswitch', 'amdgpubacklightauxoff'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'BOE Model 2423 Serial Number 0',
		usb_device => q{}
	},
	'24' => {
		model => ['TUXEDO Stellaris Gen2 Intel', 'TUXEDO Polaris Gen2 Intel'],
		board_name => ['GMxMGxx'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'25' => {
		model => ['TUXEDO Stellaris Gen3 AMD', 'TUXEDO Polaris Gen3 AMD'],
		board_name => ['GMxZGxx'],
		fix => ['tuxedotouchpadswitch', 'amdgpubacklightauxoff'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => ['BOE Model 2423 Serial Number 0', 'BOE Model 2420 Serial Number 0'],
		usb_device => q{}
	},
	'26' => {
		model => ['TUXEDO Stellaris Gen3 Intel', 'TUXEDO Polaris Gen3 Intel'],
		board_name => ['GMxTGxx'],
		fix => ['tuxedotouchpadswitch', 'nvidiabacklightcontrolfix', 'acpibacklightvideofix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'27' => {
		model => ['TUXEDO Trinity Gen1 Intel'],
		board_name => ['TRINITY1501I', 'TRINITY1701I'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'28' => {
		model => ['XMG Fusion 15 L19 GTX1660Ti'],
		board_name => ['LAPQC71A'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'29' => {
		model => ['XMG Fusion 15 L19 RTX2070'],
		board_name => ['LAPQC71B'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'30' => {
		model => ['all models'],
		board_name => [q{}],
		fix => ['apportfix', 'tuxedorepos', 'tuxedomirrors'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'32' => {
		model => ['all with fingerprintreader'],
		board_name => [q{}],
		fix => ['fingerprintreader'],
		flavour => ['24.04'],
		pci_id => ['147e:100[0123]', '147e:20(15|16|20)', '147e:300[01]', '147e:500[23]', '0483:201[56]', '1c7a:0603'],
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'34' => {
		model => ['all with NVIDIA'],
		board_name => [q{}],
		fix => ['nvidiadriver'],
		flavour => ['24.04'],
		pci_id => '030[02]:',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'38' => {
		model => ['TUXEDO Book XP14 Gen12'],
		board_name => ['NV4XMB,ME,MZ'],
		fix => ['lightdmlogindcheckgraphicalfix', 'earlyloadbacklightcontrolfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'41' => {
		model => ['TUXEDO Stellaris Gen4 Intel'],
		board_name => ['GMxAGxx'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'45' => {
		model => ['TUXEDO Pulse 15 Gen2'],
		board_name => ['PF5LUXG'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'46' => {
		model => ['TUXEDO InsanityBook 15 v1'],
		board_name => ['P95_HP', 'P95_HR', 'P95_HP,HR,HQ'],
		fix => ['backlightfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'AUO Model 21229 Serial Number 808797180',
		usb_device => q{}
	},
	'47' => {
		model => ['XP1507'],
		board_name => ['P95_HP', 'P95_HR', 'P95_HP,HR,HQ'],
		fix => ['backlightfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'AUO Model 21229 Serial Number 808797180',
		usb_device => q{}
	},
	'48' => {
		model => ['TUXEDO Stellaris Gen4 AMD'],
		board_name => ['GMxRGxx'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'49' => {
		model => ['TUXEDO InfinityBook Pro 16 Gen7'],
		board_name => ['PHxARX1_PHxAQF1', 'PH6AG01_PH6AQ71_PH6AQI1'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'50' => {
		model => ['TUXEDO Gemini 17 Gen1'],
		board_name => ['PD5x_7xPNP_PNR_PNN_PNT'],
		fix => ['acpibacklightvideofix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'51' => {
		model => ['TUXEDO Stellaris 16 Gen5 Intel'],
		board_name => ['GMxPXxx'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'53' => {
		model => ['all with plasma-workspace >=5.25'],
		board_name => [q{}],
		fix => [q{}],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'54' => {
		model => ['TUXEDO InfinityBook Pro 14/16 Gen8'],
		board_name => ['PH4PRX1_PH6PRX1', 'PH4PG31', 'PH6PG01_PH6PG71'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'55' => {
		model => ['desktoppc'],
		board_name => [q{}],
		fix => ['apportfix', 'kerneltuxedo2404', 'tuxedocontrolcenter', 'tuxedomirrors', 'tuxedorepos', 'tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'56' => {
		model => ['TUXEDO InfinityBook Pro 14 Gen7'],
		board_name => ['PHxARX1_PHxAQF1'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'57' => {
		model => ['TUXEDO Gemini 15 Gen1'],
		board_name => ['PD5x_7xPNP_PNR_PNN_PNT'],
		fix => ['acpibacklightvideofix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'58' => {
		model => ['TUXEDO Aura 14 Gen3'],
		board_name => ['NL45PU2'],
		fix => ['r8168dkms'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'59' => {
		model => ['TUXEDO Aura 15 Gen3'],
		board_name => ['NL57PU'],
		fix => ['r8168dkms'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'60' => {
		model => ['TUXEDO Stellaris 16 Gen5 AMD'],
		board_name => ['GM6XGxX'],
		fix => ['tuxedotouchpadswitch'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{},
	},
	'62' => {
		model => ['all notebooks'],
		board_name => [q{}],
		fix => ['tuxedodrivers'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'63' => {
		model => ['all notebooks from TongFang'],
		board_name => [q{}],
		fix => ['tuxedotouchpadswitch'],
		flavour => [q{}],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'64' => {
		model => ['all notebooks'],
		board_name => [q{}],
		fix => ['systemdbacklightfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'67' => {
		model => ['Sirius 16 - Gen1'],
		board_name => ['APX958'],
		fix => ['amdgpudisablepsr'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'70' => {
		model => ['all with ethernet controller YT6801'],
		board_name => [q{}],
		fix => ['tuxedoyt6801'],
		flavour => ['24.04', 'TUXEDO OS'],
		pci_id => '1f0a:6801',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'71' => {
		model => ['all with Wi-Fi with respective PCI-IDs'],
		board_name => [q{}],
		fix => ['tuxedowifisetregdomain'],
		flavour => ['24.04', 'TUXEDO OS'],
		pci_id => ['0x14c3:0608', '14c3:0616'],
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'73' => {
		model => ['TUXEDO InfinityBook 14/15 AMD Gen9'],
		board_name => ['GXxHRXx'],
		fix => ['noecwakeupfix', 'amdgpudisablepsr'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'76' => {
		model => ['TUXEDO Nano Pro Gen13'],
		board_name => ['4X4-8000 Series'],
		fix => ['tuxedobtoffsuspend'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'77' => {
		model => ['TUXEDO Nano Pro Gen11'],
		board_name => ['4X4-5000 Series'],
		fix => ['tuxedobtoffsuspend'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'78' => {
		model => ['TUXEDO Nano Pro Gen12'],
		board_name => ['4X4-7000 Series/D5', '4X4-7040 Series/D5'],
		fix => ['tuxedobtoffsuspend'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'79' => {
		model => ['MediaTek Wireless Device'],
		board_name => [q{}],
		fix => ['tuxedobtoffsuspend'],
		flavour => ['24.04', 'TUXEDO OS'],
		pci_id => q{},
		usb_id => ['0e8d:0616'],
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{},
	},
	'80' => {
		model => ['TUXEDO Stellaris Slim AMD Gen6'],
		board_name => ['GMxHGxx'],
		fix => ['amdgpudisablepsr'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'81' => {
		model => ['TUXEDO Nano Pro Gen14 AMD'],
		board_name => ['4X4-KRK Series'],
		fix => ['krackanpointusb4suspendfix'],
		flavour => ['24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	}
);








###############################################################################
#
# For each new module add an entry into:
# - %origConfModules
# - checkRequirements()
# - the section with all the modules subroutines

# For changes in %origConfModules make the modifications also in:
# - writeConfigFile()

###############################################################################
# initial definition for all modules/packages
# defined by a 'short name' which is the name without '-'
# e.g. no-boot-on-battery = nobootonbattery
#
#   name			name of package or name of solution
#   version			the package or solution version
#					rises if the solution changes
#   installed		'no' not installed / 'yes' installed / 'failed' failed to
#					install, 'undef' if unknown
#   blocked			'yes' or 'no' will not be configured on upgrade, install
#					or deinstall, 'undef' if unknown
#   required		'yes' or 'no' the system requirements are met
#					'undef' if unknown
#					'prerequisite' if essentially needed to be present before
#					anything else and always, non blockable
#   hwid			the environment (HW or SW) are in a certain defined state
#					rises if additional HW gets support
#   package			'yes' or 'no', there is a deb or rpm package as a solution
#   				if there are seceral packages to be installed then 'no'
#   fainame			the name to give to FAI to install a certain package
#   description		A description about the module for the user
#   postconf		command module to execute after installation of module,
#					empty if none, the command of the module is defined in
#					$postConfModule{$postconf}{command}
#	upgrade			if the system determines this is an upgrade then 'yes'
#					else 'no'
#					don't set the value yourself, it will be determined by
#					Tomte
#	upgraded		if module was upgraded 'yes', else 'no'
#	reconfigure		if set to 'always' will always reconfigure if fix detected
#	restart			the system requires a restart after this module was
#					installed or upgraded
#	order			'first':	has to be installed before anything else
#					'last':		has to be installed after anything else
#	dkms			'yes':	it is a dkms package
#					'no':	it is not a dkms package
#	FAI				'yes':	should be installed during FAI
#					'no':	should not be installed in FAI
#	LiveISO			'yes':	should be installed in LiveISO
#					'no':	should not be installed in LiveISO
#
our %INITIAL_MODULES_SETTINGS = (
	nobootonbattery => {
		name => 'no-boot-on-battery',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('nobootonbattery_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	amdxhcihcdusbquirksuspendfix => {
		name => 'amd-xhci-hcd-usb-quirk-suspend-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 2,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('amdxhcihcdusbquirksuspendfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	amdgpuwithnvidiafix => {
		name => 'amd-gpu-with-nvidia-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 2,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('amdgpuwithnvidiafix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	tuxedocontrolcenter => {
		name => 'tuxedo-control-center',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'yes',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedocontrolcenter_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => q{no},
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	backlightfix => {
		name => 'backlight-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 2,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('backlightfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedorepos => {
		name => 'tuxedo-repos',
		version => 4,
		installed => 'no',
		blocked => 'no',
		required => 'prerequisite',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedorepos_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => q{no},
		order => 'first',
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	tuxedomirrors => {
		name => 'tuxedo-mirrors',
		version => 6,
		installed => 'no',
		blocked => 'no',
		required => 'yes',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedomirrors_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => q{no},
		order => 'first',
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	corefix => {
		name => 'core-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('corefix_description'),
		postconf => 'updateInitramfs',
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	elantechtouchpadfix => {
		name => 'elantech-touchpad-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('elantechtouchpadfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedotouchpadswitch => {
		name => 'tuxedo-touchpad-switch',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedotouchpadswitch_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => q{no},
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	fingerprintreader => {
		name => 'fingerprint-reader',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('fingerprintreader_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	tuxedorestoreaudiofix => {
		name => 'tuxedo-restore-audio-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedorestoreaudiofix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	kerneltuxedo2404 => {
		name => 'linux-tuxedo-24.04',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('kerneltuxedo2404_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	nvidiadriver => {
		name => 'nvidia-driver',
		version => 7,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('nvidiadriver_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'yes',
		FAI => 'yes',
		LiveISO => 'no'
	},
	r8168dkms => {
		name => 'r8168-dkms',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('r8168dkms_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
		order => q{},
		dkms => 'yes',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	apportfix => {
		name => 'apport-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('apportfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	amdgpubacklightauxoff => {
		name => 'amdgpu-backlight-aux-off',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('amdgpubacklightauxoff_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	i915enablepsrfix => {
		name => 'i915-enable-psr-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 3,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('i915enablepsrfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	thunderboltbootdelayfix => {
		name => 'thunderbolt-boot-delay-fix',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('thunderboltbootdelayfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	lightdmlogindcheckgraphicalfix => {
		name => 'lightdm-logind-check-graphical-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('lightdmlogindcheckgraphicalfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	nvidiabacklightcontrolfix => {
		name => 'nvidia-backlight-control-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('nvidiabacklightcontrolfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	earlyloadbacklightcontrolfix => {
		name => 'early-load-backlight-control-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('earlyloadbacklightcontrolfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedodgpurun => {
		name => 'tuxedo-dgpu-run',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedodgpurun_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	acpibacklightvideofix => {
		name => 'acpi-backlight-video-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('acpibacklightvideofix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	# obsolete, only for removal
	disablegucfix => {
		name => 'disable-guc-fix',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('disablegucfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedodrivers => {
		name => 'tuxedo-drivers',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedodrivers_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'no',
		order => q{},
		dkms => 'yes',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	systemdbacklightfix => {
		name => 'systemd-backlight-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('systemdbacklightfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	amdgpudisablepsr => {
		name => 'amdgpu-disable-psr',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('amdgpudisablepsr_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	ath12kstandbyfix => {
		name => 'ath12k-standby-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => '1',
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('ath12kstandbyfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	# only for removal
	nvmequirkswitchtodeepsleepfix => {
		name => 'nvme-quirk-switch-to-deep-sleep-fix',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => '1',
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('nvmequirkswitchtodeepsleepfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedoyt6801 => {
		name => 'tuxedo-yt6801',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedoyt6801_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'yes',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	textboot => {
		name => 'text-boot',
		version => 1,
		installed => 'no',
		blocked => 'yes',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('textboot_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedowifisetregdomain => {
		name => 'tuxedo-wifi-set-reg-domain',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedowifisetregdomain_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'yes',
		FAI => 'yes',
		LiveISO => 'no'
	},
	gfxmode => {
		name => 'gfxmode',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('gfxmode_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no',
	},
	noecwakeupfix => {
		name => 'no-EC-wakeup-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('noecwakeupfix_description'),
		postconf => 'updateGrub',
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	noecwakeupfix => {
		name => 'no-ec-wakeup-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => '',
		description => __('noecwakeupfix_description'),
		postconf => 'updateGrub',
		upgrade => '',
		upgraded => '',
		reconfigure => 'always',
		restart => 'yes',
		order => '',
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	tuxedobtoffsuspend => {
		name => 'tuxedo-bt-off-suspend',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedobtoffsuspend_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	},
	krackanpointusb4suspendfix => {
		name => 'tuxedo-fix-krackan-point-usb4-suspend',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('krackanpointusb4suspendfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'yes',
		order => q{},
		dkms => 'no',
		FAI => 'yes',
		LiveISO => 'no'
	}
);


###############################################################################
# files used by package manager utilities to lock package management
#
my %LOCKFILES = (
	aptArchivesLock => {
		filename => '/var/cache/apt/archives/lock',
		FH => q{},
		number => '0',
		locked => '0'
	},
	aptListsLock => {
		filename => '/var/lib/apt/lists/lock',
		FH => q{},
		number => '0',
		locked => '0'
	},
	dpkgLock => {
		filename => '/var/lib/dpkg/lock',
		FH => q{},
		number => '0',
		locked => '0'
	},
	dpkgLockFrontend => {
		filename => '/var/lib/dpkg/lock-frontend',
		FH => q{},
		number => '0',
		locked => '0'
	}
);



###############################################################################
# initial definition of post configuration modules
#   command     the command to be executed on the system
#   trigger     '1' / 'undef' wether the command should be executed
#   status      'undef' / 'failed' wether the command execution failed
#
my %POST_CONF_PROGRAMS = (
	updateGrub => {
		command => 'update-grub',
		trigger => 0,
		status => 'undef',
		description => __('updateGrub_description')
	},
	updateInitramfs => {
		command => 'update-initramfs -u -k all',
		trigger => 0,
		status => 'undef',
		description => __('updateInitramfs_description')
	}
);



sub devices {
	return %DEVICES;
}

sub supportedOS {
	return %SUPPORTED_OS;
}

sub essentialRepos {
	return %ESSENTIAL_REPOS;
}

sub otherRepos {
	return %OTHER_REPOS;
}

sub kernels {
	return %KERNELS;
}

sub initialModuleSettings {
	return %INITIAL_MODULES_SETTINGS;
}

sub lockFiles {
	return %LOCKFILES;
}

sub postConfPrograms {
	return %POST_CONF_PROGRAMS;
}

1;
