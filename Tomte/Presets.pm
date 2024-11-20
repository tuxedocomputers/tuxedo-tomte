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
	"TUXEDO OS" => ["20.04", "22.04", "24.04"],
	"TUXEDO_OS Plasma" => ["20.04", "22.04", "24.04"],
	"KDE neon" => ["20.04", "22.04", "24.04"],
	"Ubuntu" => ["20.04", "22.04", "24.04"],
	"Linux Mint" => ["21.1", "21.2", "21.3", "22"],
	"elementary OS" => ["6.1", "7.1"]
);

our %ESSENTIAL_REPOS = (
	"focal" => {
		"deb" => {
			"content" => ["deb https://deb.tuxedocomputers.com/ubuntu focal main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-computers.list"
		}
	},

	"jammy" => {
		"deb" => {
			"content" => ["deb https://deb.tuxedocomputers.com/ubuntu jammy main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-computers.list"
		}
	},

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

	"TUXEDO OS 22.04" => {
		"deb" => {
			"content" => ["deb https://deb.tuxedocomputers.com/ubuntu jammy main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-computers.list"
		},
		"nonplasma6txos" => {
			"content" => ["deb https://txos.tuxedocomputers.com/ubuntu jammy main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-os.list"
		},
		"nonplasma6plasma" => {
			"content" => ["deb https://plasma.tuxedocomputers.com jammy main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-plasma.list"
		},
		"plasma6txos" => {
			"content" => [
				"deb https://txos.tuxedocomputers.com/ubuntu jammy main",
			   	"deb https://txos.tuxedocomputers.com/ubuntu jammy-plasma main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-os.list"
			},
		"plasma6plasma" => {
			"content" => ["deb https://plasma6.tuxedocomputers.com jammy main"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-plasma.list"
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
		},
		"plasma" => {
			"content" => ["Types: deb\n".
							"URIs: https://plasma6.tuxedocomputers.com/\n".
							"Suites: noble\n".
							"Components: main\n".
							"Signed-By: /usr/share/keyrings/neon-archive-keyring.gpg\n"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-os-plasma.sources"
		}
	}
);

our %OTHER_REPOS = (
	"focal" => {
		"mirrors" => {
			"content" => [
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu focal main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu focal-security main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu focal-updates main restricted universe multiverse"
			],
			"filename" => "/etc/apt/sources.list.d/tuxedo-ubuntu-mirrors.list"
		}
	},

	"jammy" => {
		"mirrors" => {
			"content" => [
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy-updates main restricted universe multiverse"
			],
			"filename" => "/etc/apt/sources.list.d/tuxedo-ubuntu-mirrors.list"
		}
	},

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


	"Linux Mint 21.1" => {
		"name" => "vanessa",
		"mirrors" => {
			"content" => [
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy-updates main restricted universe multiverse",
				"deb http://packages.linuxmint.com vanessa main upstream import backport"
			],
			"filename" => "/etc/apt/sources.list.d/official-package-repositories.list"
		}
	},

	"Linux Mint 21.2" => {
		"name" => "victoria",
		"mirrors" => {
			"content" => [
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy-updates main restricted universe multiverse",
				"deb http://packages.linuxmint.com victoria main upstream import backport"
			],
			"filename" => "/etc/apt/sources.list.d/official-package-repositories.list"
		}
	},

	"Linux Mint 21.3" => {
		"name" => "virginia",
		"mirrors" => {
			"content" => [
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu jammy-updates main restricted universe multiverse",
				"deb http://packages.linuxmint.com virginia main upstream import backport"
			],
			"filename" => "/etc/apt/sources.list.d/official-package-repositories.list"
		}
	},

	"Linux Mint 22" => {
		"name" => "wilma",
		"mirrors" => {
			"content" => [
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu noble main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu noble-security main restricted universe multiverse",
				"deb https://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu noble-updates main restricted universe multiverse",
				"deb http://packages.linuxmint.com wilma main upstream import backport #id:linuxmint_main"
			],
			"filename" => "/etc/apt/sources.list.d/official-package-repositories.list"
		}
	},

	"TUXEDO OS 24.04" => {
		"plasma" => {
			"content" => ["Types: deb\n".
							"URIs: https://plasma6.tuxedocomputers.com/\n".
							"Suites: noble\n".
							"Components: main\n".
							"Signed-By: /usr/share/keyrings/neon-archive-keyring.gpg\n"],
			"filename" => "/etc/apt/sources.list.d/tuxedo-os-plasma.sources"
		}
	}
);

our %KERNELS = (
	'focal' => {
		'index' => '1',
		'linux-tuxedo-20.04' => 'linux-tuxedo-20.04'
	},

	'jammy' => {
		'index' => '2',
		'linux-tuxedo-22.04' => 'linux-tuxedo-22.04'
	},

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
# default kernels tuxedokernel2004 and tuxeookernel2204 are not listed
# only kernels that deviate from the default are listed
#
our %DEVICES = (
	'1' => {
		model => ['TUXEDO Aura 15 Gen1'],
		board_name => ['NL5xRU', 'AURA1501'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'nokeyboardaftersuspendfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'AUO Model 12701 Serial Number 585803690',
		usb_device => q{}
	},
	'6' => {
		model => ['TUXEDO Book XA15 Gen10'],
		board_name => ['NH5xAx'],
		fix => ['nokeyboardaftersuspendfix', 'corefix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '1558:50f0',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'7' => {
		model => ['TUXEDO Book XC15 Gen10', 'TUXEDO Book XC17 Gen10'],
		board_name => ['PB50_70DFx,DDx'],
		fix => ['nokeyboardaftersuspendfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '1558:67e1',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'8' => {
		model => ['TUXEDO Book XP15 Gen12', 'TUXEDO Book XP17 Gen12'],
		board_name => ['PCx0Dx_GN20'],
		fix => ['tuxedodrivers'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => ['1558:65e5', '1558:67e5'],
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'9' => {
		model => ['TUXEDO Book XUX7 Gen11'],
		board_name => ['X170SM'],
		fix => ['nokeyboardaftersuspendfix', 'tuxedodrivers'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'10' => {
		model => ['TUXEDO Book XUX7 Gen13'],
		board_name => ['X170KM-G'],
		fix => ['tuxedodrivers', 'nokeyboardaftersuspendfix', 'thunderboltbootdelayfix'],
		flavour => ['20.04', '22.04', '24.04'],
		pci_id => '1558:7715',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'11' => {
		model => ['TUXEDO EduBook 15 Gen2'],
		board_name => ['EDUBOOK1502'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'nokeyboardaftersuspendfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '1d05:1132',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'14' => {
		model => ['TUXEDO InfinityBook Pro 14 v5'],
		board_name => ['N141CU'],
		fix => ['nokeyboardaftersuspendfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'15' => {
		model => ['TUXEDO InfinityBook Pro 15 v5'],
		board_name => ['N150CU'],
		fix => ['nokeyboardaftersuspendfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '1558:1404',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'17' => {
		model => ['TUXEDO Polaris Gen1 AMD NVIDIA GTX1650Ti'],
		board_name => ['POLARIS1501A1650TI', 'POLARIS1701A1650TI'],
		fix => ['amdxhcihcdusbquirksuspendfix', 'amdgpuwithnvidiafix', 'tuxedotouchpadswitch'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'25' => {
		model => ['TUXEDO Stellaris Gen3 AMD', 'TUXEDO Polaris Gen3 AMD'],
		board_name => ['GMxZGxx'],
		fix => ['tuxedotouchpadswitch', 'tuxedodrivers', 'amdgpubacklightauxoff'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => ['BOE Model 2423 Serial Number 0', 'BOE Model 2420 Serial Number 0'],
		usb_device => q{}
	},
	'26' => {
		model => ['TUXEDO Stellaris Gen3 Intel', 'TUXEDO Polaris Gen3 Intel'],
		board_name => ['GMxTGxx'],
		fix => ['tuxedotouchpadswitch', 'tuxedodrivers', 'nvidiabacklightcontrolfix', 'acpibacklightvideofix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'28' => {
		model => ['XMG Fusion 15 L19 GTX1660Ti'],
		board_name => ['LAPQC71A'],
		fix => ['nokeyboardaftersuspendfix', 'tuxedotouchpadswitch'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'29' => {
		model => ['XMG Fusion 15 L19 RTX2070'],
		board_name => ['LAPQC71B'],
		fix => ['nokeyboardaftersuspendfix', 'tuxedotouchpadswitch'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => ['147e:100[0123]', '147e:20(15|16|20)', '147e:300[01]', '147e:500[23]', '0483:201[56]', '1c7a:0603'],
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'33' => {
		model => ['all with LTE module ME936'],
		board_name => [q{}],
		fix => ['huaweime936fix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '12d1:15bb',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => 'ME936'
	},
	'34' => {
		model => ['all with NVIDIA'],
		board_name => [q{}],
		fix => ['nvidiadriver'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '030[02]:',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'35' => {
		model => ['all with OLED display'],
		board_name => [q{}],
		fix => ['tuxedooledbrt'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'SDC Model 41001 Serial Number 0',
		usb_device => q{}
	},
	'36' => {
		model => ['Kingston NVMe'],
		board_name => [q{}],
		fix => ['tuxedonvmefix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '2646:2263',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'37' => {
		model => ['InfinityBook S 17 Gen6', 'InfinityBook S 15 Gen6'],
		board_name => ['NS50_70MU', 'NS50MU'],
		fix => ['i8042noauxfix'],
		flavour => ['18.04', '20.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'38' => {
		model => ['TUXEDO Book XP14 Gen12'],
		board_name => ['NV4XMB,ME,MZ'],
		fix => ['lightdmlogindcheckgraphicalfix', 'earlyloadbacklightcontrolfix'],
		flavour => ['18.04', '20.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'39' => {
		model => ['TUXEDO Aura 15 Gen2'],
		board_name => ['NL5xNU'],
		fix => [],
		flavour => ['18.04', '20.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'40' => {
		model => ['all models'],
		board_name => [q{}],
		fix => ['apportfix', 'tuxedorepos', 'tuxedomirrors'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'41' => {
		model => ['TUXEDO Stellaris Gen4 Intel'],
		board_name => ['GMxAGxx'],
		fix => ['tuxedodrivers', "tuxedotouchpadswitch"],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'42' => {
		model => ['all with LTE module ME906s'],
		board_name => [q{}],
		fix => ['huaweime906sfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '12d1:15c1',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => 'ME906'
	},
	'43' => {
		model => ['all with cardreader Realtek RTS522A'],
		board_name => [q{}],
		fix => ['cardreaderfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => ['10ec:522a'],
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'44' => {
		model => ['all with Realtek RTL8125'],
		board_name => [q{}],
		fix => ['tuxedor8125dkms'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '10ec:8125',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'45' => {
		model => ['TUXEDO Pulse 15 Gen2'],
		board_name => ['PF5LUXG'],
		fix => ['tuxedotouchpadswitch', 'samsungnvmefix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => 'linux-tuxedo-22.04-edge',
		display => q{},
		usb_device => q{}
	},
	'46' => {
		model => ['TUXEDO InsanityBook 15 v1'],
		board_name => ['P95_HP', 'P95_HR', 'P95_HP,HR,HQ'],
		fix => ['backlightfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => 'AUO Model 21229 Serial Number 808797180',
		usb_device => q{}
	},
	'48' => {
		model => ['TUXEDO Stellaris Gen4 AMD'],
		board_name => ['GMxRGxx'],
		fix => ['tuxedodrivers', "tuxedotouchpadswitch"],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
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
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => 'linux-tuxedo-22.04-edge',
		display => q{},
		usb_device => q{}
	},
	'50' => {
		model => ['TUXEDO Gemini 17 Gen1'],
		board_name => ['PD5x_7xPNP_PNR_PNN_PNT'],
		fix => ['tuxedodrivers', 'acpibacklightvideofix'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => 'linux-tuxedo-22.04-next',
		display => q{},
		usb_device => q{}
	},
	'51' => {
		model => ['TUXEDO Stellaris 16 Gen5 Intel'],
		board_name => ['GMxPXxx'],
		fix => ['tuxedodrivers', 'tuxedotouchpadswitch'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'52' => {
		model => ['all with Intel Gen13 PCI USB controller'],
		board_name => [q{}],
		fix => ['intelgenXIIIpowerctlfix'],
		flavour => ['22.04', '24.04'],
		pci_id => '8086:1135',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'53' => {
		model => ['all with plasma-workspace >=5.25'],
		board_name => [q{}],
		fix => [q{}],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'54' => {
		model => ['TUXEDO InfinityBook Pro 14/16 Gen8'],
		board_name => ['PH4PRX1_PH6PRX1', 'PH4PG31', 'PH6PG01_PH6PG71'],
		fix => ['tuxedotouchpadswitch', 'disablegucfix'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'55' => {
		model => ['desktoppc'],
		board_name => [q{}],
		fix => ['apportfix', 'kerneltuxedo2204', 'tuxedocontrolcenter', 'tuxedokeyboard', 'tuxedomirrors', 'tuxedorepos', 'tuxedotouchpadswitch'],
		flavour => ['22.04', '24.04'],
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
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => 'linux-tuxedo-22.04-edge',
		display => q{},
		usb_device => q{}
	},
	'57' => {
		model => ['TUXEDO Gemini 15 Gen1'],
		board_name => ['PD5x_7xPNP_PNR_PNN_PNT'],
		fix => ['tuxedodrivers', 'acpibacklightvideofix'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => 'linux-tuxedo-22.04-next',
		display => q{},
		usb_device => q{}
	},
	'58' => {
		model => ['TUXEDO Aura 14 Gen3'],
		board_name => ['NL45PU2'],
		fix => ['r8168dkms'],
		flavour => ['22.04', '24.04'],
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
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'60' => {
		model => ['TUXEDO Stellaris 16 Gen5 AMD'],
		board_name => ['GM6XGxX'],
		fix => ['tuxedodrivers', 'tuxedotouchpadswitch'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{},
	},
	'61' => {
		model => ['all notebooks'],
		board_name => [q{}],
		fix => ['tuxedokeyboard'],
		flavour => ['18.04', '20.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'62' => {
		model => ['all notebooks'],
		board_name => [q{}],
		fix => ['tuxedodrivers'],
		flavour => ['22.04', '24.04'],
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
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'65' => {
		model => ['all Elementary OS'],
		board_name => [q{}],
		fix => ['elementaryosdkmspinningfix'],
		flavour => ['6.1', '7.2'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'66' => {
		model => ['all with LTE module ME906s HP rebranded'],
		board_name => [q{}],
		fix => ['huaweime906shpfix'],
		flavour => ['18.04', '20.04', '22.04', '24.04'],
		pci_id => '03f0:a31d',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => 'ME906'
	},
	'67' => {
		model => ['Sirius 16 - Gen1'],
		board_name => ['APX958'],
		fix => ['amdgpudisablepsr'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'68' => {
		model => ['TUXEDO InfinityBook S 15/17 - Gen8'],
		board_name => ['NS5X_NS7XAU', 'NS5X_7XAU'], # case insensitive
		fix => ['nvmequirkswitchtodeepsleepfix'],
		flavour => ['22.04', '24.04'],
		pci_id => '144d:a80d',
		cpu => q{},
		kernel => q{},
		display => q{},
		usb_device => q{}
	},
	'69' => {
		model => ['all'],
		board_name => [q{}],
		fix => ['tuxedoplasmaupgrade'],
		flavour => ['TUXEDO OS 2 22.04'],
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
		flavour => ['22.04', '24.04', 'TUXEDO OS'],
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
	'72' => {
		model => ['TUXEDO InfinityBook 14 Intel Gen9'],
		board_name => ['GXxMRXx'],
		fix => [q{}],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'73' => {
		model => ['TUXEDO InfinityBook 14 AMD Gen9'],
		board_name => ['GXxHRXx'],
		fix => ['noecwakeupfix'],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'74' => {
		model => ['TUXEDO InfinityBook 15 Intel Gen9'],
		board_name => ['GXxMRXx'],
		fix => [q{}],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
	},
	'75' => {
		model => ['TUXEDO InfinityBook 15 AMD Gen9'],
		board_name => ['GXxHRXx'],
		fix => [q{}],
		flavour => ['22.04', '24.04'],
		pci_id => q{},
		cpu => q{},
		kernel => '',
		display => q{},
		usb_device => q{},
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
	tuxedokeyboard => {
		name => 'tuxedo-keyboard',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedokeyboard_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => q{no},
		order => q{},
		dkms => 'yes',
		FAI => 'yes',
		LiveISO => 'yes'
	},
	nokeyboardaftersuspendfix => {
	# obsolete since kernel 5.15.0-53
		name => 'no-keyboard-after-suspend-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 5,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('nokeyboardaftersuspendfix_description'),
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
		version => 5,
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
	huaweime906sfix => {
		name => 'huawei-me906s-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('huaweime906sfix_description'),
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
	huaweime906shpfix => {
		name => 'huawei-me906s-hp-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('huaweime906shpfix_description'),
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
	huaweime936fix => {
		name => 'huawei-me936-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('huaweime936fix_description'),
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
	tuxedonvmefix => {
		name => 'tuxedo-nvme-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedonvmefix_description'),
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
	tuxedokeyboardite => {
		name => 'tuxedo-keyboard-ite',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 2,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedokeyboardite_description'),
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
	kerneltuxedo2004 => {
		name => 'linux-tuxedo-20.04',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 2,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('kerneltuxedo2004_description'),
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
	kerneltuxedo2204 => {
		name => 'linux-tuxedo-22.04',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('kerneltuxedo2204_description'),
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
	tuxedooledbrt => {
		name => 'tuxedo-oled-brt',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedooledbrt_description'),
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
	i8042noauxfix => {
	# obsolete since kernel 5.15.0-53
		name => 'i8042noaux-fix',
		version => 2,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('i8042noauxfix_description'),
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
	tuxedor8125dkms => {
		name => 'tuxedo-r8125-dkms',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedor8125dkms_description'),
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
	cardreaderfix => {
		name => 'cardreader-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('cardreaderfix_description'),
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
	samsungnvmefix => {
		name => 'samsung-nvme-fix',
		version => 3,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('samsungnvmefix_description'),
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
	intelgenXIIIpowerctlfix => {
		name => 'intel-gen13-powerctl-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('intelgenXIIIpowerctlfix_description'),
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
	disablegucfix => {
		name => 'disable-guc-fix',
		version => 1,
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
	elementaryosdkmspinningfix => {
		name => 'elementaryos-dkms-pinning-fix',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'no',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('elementaryosdkmspinningfix_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => q{},
		restart => 'no',
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
	nvmequirkswitchtodeepsleepfix => {
		name => 'nvme-quirk-switch-to-deep-sleep-fix',
		version => 2,
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
	tuxedoplasmaupgrade => {
		name => 'tuxedo-plasma-upgrade',
		version => 1,
		installed => 'no',
		blocked => 'no',
		required => 'no',
		hwid => 1,
		package => 'yes',
		packageVersion => 'unkwn',
		fainame => q{},
		description => __('tuxedoplasmaupgrade_description'),
		postconf => q{},
		upgrade => q{},
		upgraded => q{},
		reconfigure => 'always',
		restart => 'no',
		order => q{},
		dkms => 'no',
		FAI => 'no',
		LiveISO => 'no'
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
		description => __('noecwakupfix_description'),
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
