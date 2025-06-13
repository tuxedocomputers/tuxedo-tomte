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

# This list is not meant to be edited manually but to be created by
# a script using as input the websites with the primary information
# for Nvidia devices and required drivers:
# Nvidia: https://download.nvidia.com/XFree86/Linux-x86_64/575.51.02/README/supportedchips.html
# Opem-GPU: https://github.com/NVIDIA/open-gpu-kernel-modules

package Tomte::NvidiaList;

use strict qw(vars subs);
use warnings;
use 5.010;

use parent 'Exporter';
our @EXPORT_OK = qw( nvidiaPackage nvidiaProductID );


our %NVIDIA_PACKAGE = (
	'open' => 'tuxedo-nvidia-driver-575-open',
	'closed' => 'tuxedo-nvidia-driver-575'
);


# version: 202505281846

our %NVIDIA_PRODUCT_ID = (
          '0020' => {
                      'none' => {
                                  'name' => 'RIVA TNT',
                                  'type' => 'legacy'
                                }
                    },
          '0028' => {
                      'none' => {
                                  'name' => 'RIVA TNT2/TNT2 Pro',
                                  'type' => 'legacy'
                                }
                    },
          '0029' => {
                      'none' => {
                                  'name' => 'RIVA TNT2 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '002C' => {
                      'none' => {
                                  'name' => 'Vanta/Vanta LT',
                                  'type' => 'legacy'
                                }
                    },
          '002D' => {
                      'none' => {
                                  'name' => 'RIVA TNT2 Model 64/Model 64 Pro',
                                  'type' => 'legacy'
                                }
                    },
          '0040' => {
                      'none' => {
                                  'name' => 'GeForce 6800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0041' => {
                      'none' => {
                                  'name' => 'GeForce 6800',
                                  'type' => 'legacy'
                                }
                    },
          '0042' => {
                      'none' => {
                                  'name' => 'GeForce 6800 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0043' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XE',
                                  'type' => 'legacy'
                                }
                    },
          '0044' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
                                }
                    },
          '0045' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0046' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0047' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0048' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
                                }
                    },
          '004E' => {
                      'none' => {
                                  'name' => 'Quadro FX 4000',
                                  'type' => 'legacy'
                                }
                    },
          '0090' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0091' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0092' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0093' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0095' => {
                      'none' => {
                                  'name' => 'GeForce 7800 SLI',
                                  'type' => 'legacy'
                                }
                    },
          '0098' => {
                      'none' => {
                                  'name' => 'GeForce Go 7800',
                                  'type' => 'legacy'
                                }
                    },
          '0099' => {
                      'none' => {
                                  'name' => 'GeForce Go 7800 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '009D' => {
                      'none' => {
                                  'name' => 'Quadro FX 4500',
                                  'type' => 'legacy'
                                }
                    },
          '00A0' => {
                      'none' => {
                                  'name' => 'Aladdin TNT2',
                                  'type' => 'legacy'
                                }
                    },
          '00C0' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '00C1' => {
                      'none' => {
                                  'name' => 'GeForce 6800',
                                  'type' => 'legacy'
                                }
                    },
          '00C2' => {
                      'none' => {
                                  'name' => 'GeForce 6800 LE',
                                  'type' => 'legacy'
                                }
                    },
          '00C3' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
                                }
                    },
          '00C8' => {
                      'none' => {
                                  'name' => 'GeForce Go 6800',
                                  'type' => 'legacy'
                                }
                    },
          '00C9' => {
                      'none' => {
                                  'name' => 'GeForce Go 6800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '00CC' => {
                      'none' => {
                                  'name' => 'Quadro FX Go1400',
                                  'type' => 'legacy'
                                }
                    },
          '00CD' => {
                      'none' => {
                                  'name' => 'Quadro FX 3450/4000 SDI',
                                  'type' => 'legacy'
                                }
                    },
          '00CE' => {
                      'none' => {
                                  'name' => 'Quadro FX 1400',
                                  'type' => 'legacy'
                                }
                    },
          '00F1' => {
                      'none' => {
                                  'name' => 'GeForce 6600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '00F2' => {
                      'none' => {
                                  'name' => 'GeForce 6600',
                                  'type' => 'legacy'
                                }
                    },
          '00F3' => {
                      'none' => {
                                  'name' => 'GeForce 6200',
                                  'type' => 'legacy'
                                }
                    },
          '00F4' => {
                      'none' => {
                                  'name' => 'GeForce 6600 LE',
                                  'type' => 'legacy'
                                }
                    },
          '00F5' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '00F6' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '00F8' => {
                      'none' => {
                                  'name' => 'Quadro FX 3400/Quadro FX 4000',
                                  'type' => 'legacy'
                                }
                    },
          '00F9' => {
                      'none' => {
                                  'name' => 'GeForce 6800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '00FA' => {
                      'none' => {
                                  'name' => 'GeForce PCX 5750',
                                  'type' => 'legacy'
                                }
                    },
          '00FB' => {
                      'none' => {
                                  'name' => 'GeForce PCX 5900',
                                  'type' => 'legacy'
                                }
                    },
          '00FC' => {
                      'none' => {
                                  'name' => 'Quadro FX 330/GeForce PCX 5300',
                                  'type' => 'legacy'
                                }
                    },
          '00FD' => {
                      'none' => {
                                  'name' => 'Quadro FX 330/Quadro NVS 280 PCI-E',
                                  'type' => 'legacy'
                                }
                    },
          '00FE' => {
                      'none' => {
                                  'name' => 'Quadro FX 1300',
                                  'type' => 'legacy'
                                }
                    },
          '0100' => {
                      'none' => {
                                  'name' => 'GeForce 256',
                                  'type' => 'legacy'
                                }
                    },
          '0101' => {
                      'none' => {
                                  'name' => 'GeForce DDR',
                                  'type' => 'legacy'
                                }
                    },
          '0103' => {
                      'none' => {
                                  'name' => 'Quadro',
                                  'type' => 'legacy'
                                }
                    },
          '0110' => {
                      'none' => {
                                  'name' => 'GeForce2 MX/MX 400',
                                  'type' => 'legacy'
                                }
                    },
          '0111' => {
                      'none' => {
                                  'name' => 'GeForce2 MX 100/200',
                                  'type' => 'legacy'
                                }
                    },
          '0112' => {
                      'none' => {
                                  'name' => 'GeForce2 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0113' => {
                      'none' => {
                                  'name' => 'Quadro2 MXR/EX/Go',
                                  'type' => 'legacy'
                                }
                    },
          '0140' => {
                      'none' => {
                                  'name' => 'GeForce 6600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0141' => {
                      'none' => {
                                  'name' => 'GeForce 6600',
                                  'type' => 'legacy'
                                }
                    },
          '0142' => {
                      'none' => {
                                  'name' => 'GeForce 6600 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0143' => {
                      'none' => {
                                  'name' => 'GeForce 6600 VE',
                                  'type' => 'legacy'
                                }
                    },
          '0144' => {
                      'none' => {
                                  'name' => 'GeForce Go 6600',
                                  'type' => 'legacy'
                                }
                    },
          '0145' => {
                      'none' => {
                                  'name' => 'GeForce 6610 XL',
                                  'type' => 'legacy'
                                }
                    },
          '0146' => {
                      'none' => {
                                  'name' => 'GeForce Go 6600 TE/6200 TE',
                                  'type' => 'legacy'
                                }
                    },
          '0147' => {
                      'none' => {
                                  'name' => 'GeForce 6700 XL',
                                  'type' => 'legacy'
                                }
                    },
          '0148' => {
                      'none' => {
                                  'name' => 'GeForce Go 6600',
                                  'type' => 'legacy'
                                }
                    },
          '0149' => {
                      'none' => {
                                  'name' => 'GeForce Go 6600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '014A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 440',
                                  'type' => 'legacy'
                                }
                    },
          '014C' => {
                      'none' => {
                                  'name' => 'Quadro FX 540M',
                                  'type' => 'legacy'
                                }
                    },
          '014D' => {
                      'none' => {
                                  'name' => 'Quadro FX 550',
                                  'type' => 'legacy'
                                }
                    },
          '014E' => {
                      'none' => {
                                  'name' => 'Quadro FX 540',
                                  'type' => 'legacy'
                                }
                    },
          '014F' => {
                      'none' => {
                                  'name' => 'GeForce 6200',
                                  'type' => 'legacy'
                                }
                    },
          '0150' => {
                      'none' => {
                                  'name' => 'GeForce2 GTS/GeForce2 Pro',
                                  'type' => 'legacy'
                                }
                    },
          '0151' => {
                      'none' => {
                                  'name' => 'GeForce2 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '0152' => {
                      'none' => {
                                  'name' => 'GeForce2 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0153' => {
                      'none' => {
                                  'name' => 'Quadro2 Pro',
                                  'type' => 'legacy'
                                }
                    },
          '0160' => {
                      'none' => {
                                  'name' => 'GeForce 6500',
                                  'type' => 'legacy'
                                }
                    },
          '0161' => {
                      'none' => {
                                  'name' => 'GeForce 6200 TurboCache(TM)',
                                  'type' => 'legacy'
                                }
                    },
          '0162' => {
                      'none' => {
                                  'name' => 'GeForce 6200SE TurboCache(TM)',
                                  'type' => 'legacy'
                                }
                    },
          '0163' => {
                      'none' => {
                                  'name' => 'GeForce 6200 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0164' => {
                      'none' => {
                                  'name' => 'GeForce Go 6200',
                                  'type' => 'legacy'
                                }
                    },
          '0165' => {
                      'none' => {
                                  'name' => 'Quadro NVS 285',
                                  'type' => 'legacy'
                                }
                    },
          '0166' => {
                      'none' => {
                                  'name' => 'GeForce Go 6400',
                                  'type' => 'legacy'
                                }
                    },
          '0167' => {
                      'none' => {
                                  'name' => 'GeForce Go 6200',
                                  'type' => 'legacy'
                                }
                    },
          '0168' => {
                      'none' => {
                                  'name' => 'GeForce Go 6400',
                                  'type' => 'legacy'
                                }
                    },
          '0169' => {
                      'none' => {
                                  'name' => 'GeForce 6250',
                                  'type' => 'legacy'
                                }
                    },
          '016A' => {
                      'none' => {
                                  'name' => 'GeForce 7100 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0170' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 460',
                                  'type' => 'legacy'
                                }
                    },
          '0171' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 440',
                                  'type' => 'legacy'
                                }
                    },
          '0172' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 420',
                                  'type' => 'legacy'
                                }
                    },
          '0173' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 440-SE',
                                  'type' => 'legacy'
                                }
                    },
          '0174' => {
                      'none' => {
                                  'name' => 'GeForce4 440 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0175' => {
                      'none' => {
                                  'name' => 'GeForce4 420 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0176' => {
                      'none' => {
                                  'name' => 'GeForce4 420 Go 32M',
                                  'type' => 'legacy'
                                }
                    },
          '0177' => {
                      'none' => {
                                  'name' => 'GeForce4 460 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0178' => {
                      'none' => {
                                  'name' => 'Quadro4 550 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '0179' => {
                      'none' => {
                                  'name' => 'GeForce4 440 Go 64M',
                                  'type' => 'legacy'
                                }
                    },
          '017A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 400',
                                  'type' => 'legacy'
                                }
                    },
          '017C' => {
                      'none' => {
                                  'name' => 'Quadro4 500 GoGL',
                                  'type' => 'legacy'
                                }
                    },
          '017D' => {
                      'none' => {
                                  'name' => 'GeForce4 410 Go 16M',
                                  'type' => 'legacy'
                                }
                    },
          '0181' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 440 with AGP8X',
                                  'type' => 'legacy'
                                }
                    },
          '0182' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 440SE with AGP8X',
                                  'type' => 'legacy'
                                }
                    },
          '0183' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 420 with AGP8X',
                                  'type' => 'legacy'
                                }
                    },
          '0185' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 4000',
                                  'type' => 'legacy'
                                }
                    },
          '0188' => {
                      'none' => {
                                  'name' => 'Quadro4 580 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '018A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 280 SD',
                                  'type' => 'legacy'
                                }
                    },
          '018B' => {
                      'none' => {
                                  'name' => 'Quadro4 380 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '018C' => {
                      'none' => {
                                  'name' => 'Quadro NVS 50 PCI',
                                  'type' => 'legacy'
                                }
                    },
          '0191' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0193' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GTS',
                                  'type' => 'legacy'
                                }
                    },
          '0194' => {
                      'none' => {
                                  'name' => 'GeForce 8800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0197' => {
                      'none' => {
                                  'name' => 'Tesla C870',
                                  'type' => 'legacy'
                                }
                    },
          '019D' => {
                      'none' => {
                                  'name' => 'Quadro FX 5600',
                                  'type' => 'legacy'
                                }
                    },
          '019E' => {
                      'none' => {
                                  'name' => 'Quadro FX 4600',
                                  'type' => 'legacy'
                                }
                    },
          '01A0' => {
                      'none' => {
                                  'name' => 'GeForce2 Integrated GPU',
                                  'type' => 'legacy'
                                }
                    },
          '01D0' => {
                      'none' => {
                                  'name' => 'GeForce 7350 LE',
                                  'type' => 'legacy'
                                }
                    },
          '01D1' => {
                      'none' => {
                                  'name' => 'GeForce 7300 LE',
                                  'type' => 'legacy'
                                }
                    },
          '01D2' => {
                      'none' => {
                                  'name' => 'GeForce 7550 LE',
                                  'type' => 'legacy'
                                }
                    },
          '01D3' => {
                      'none' => {
                                  'name' => 'GeForce 7300 SE/7200 GS',
                                  'type' => 'legacy'
                                }
                    },
          '01D6' => {
                      'none' => {
                                  'name' => 'GeForce Go 7200',
                                  'type' => 'legacy'
                                }
                    },
          '01D7' => {
                      'none' => {
                                  'name' => 'GeForce Go 7300',
                                  'type' => 'legacy'
                                }
                    },
          '01D8' => {
                      'none' => {
                                  'name' => 'GeForce Go 7400',
                                  'type' => 'legacy'
                                }
                    },
          '01DA' => {
                      'none' => {
                                  'name' => 'Quadro NVS 110M',
                                  'type' => 'legacy'
                                }
                    },
          '01DB' => {
                      'none' => {
                                  'name' => 'Quadro NVS 120M',
                                  'type' => 'legacy'
                                }
                    },
          '01DC' => {
                      'none' => {
                                  'name' => 'Quadro FX 350M',
                                  'type' => 'legacy'
                                }
                    },
          '01DD' => {
                      'none' => {
                                  'name' => 'GeForce 7500 LE',
                                  'type' => 'legacy'
                                }
                    },
          '01DE' => {
                      'none' => {
                                  'name' => 'Quadro FX 350',
                                  'type' => 'legacy'
                                }
                    },
          '01DF' => {
                      'none' => {
                                  'name' => 'GeForce 7300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '01F0' => {
                      'none' => {
                                  'name' => 'GeForce4 MX Integrated GPU',
                                  'type' => 'legacy'
                                }
                    },
          '0200' => {
                      'none' => {
                                  'name' => 'GeForce3',
                                  'type' => 'legacy'
                                }
                    },
          '0201' => {
                      'none' => {
                                  'name' => 'GeForce3 Ti 200',
                                  'type' => 'legacy'
                                }
                    },
          '0202' => {
                      'none' => {
                                  'name' => 'GeForce3 Ti 500',
                                  'type' => 'legacy'
                                }
                    },
          '0203' => {
                      'none' => {
                                  'name' => 'Quadro DCC',
                                  'type' => 'legacy'
                                }
                    },
          '0211' => {
                      'none' => {
                                  'name' => 'GeForce 6800',
                                  'type' => 'legacy'
                                }
                    },
          '0212' => {
                      'none' => {
                                  'name' => 'GeForce 6800 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0215' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0218' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
                                }
                    },
          '0221' => {
                      'none' => {
                                  'name' => 'GeForce 6200',
                                  'type' => 'legacy'
                                }
                    },
          '0222' => {
                      'none' => {
                                  'name' => 'GeForce 6200 A-LE',
                                  'type' => 'legacy'
                                }
                    },
          '0240' => {
                      'none' => {
                                  'name' => 'GeForce 6150',
                                  'type' => 'legacy'
                                }
                    },
          '0241' => {
                      'none' => {
                                  'name' => 'GeForce 6150 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0242' => {
                      'none' => {
                                  'name' => 'GeForce 6100',
                                  'type' => 'legacy'
                                }
                    },
          '0244' => {
                      'none' => {
                                  'name' => 'GeForce Go 6150',
                                  'type' => 'legacy'
                                }
                    },
          '0245' => {
                      'none' => {
                                  'name' => 'Quadro NVS 210S / GeForce 6150LE',
                                  'type' => 'legacy'
                                }
                    },
          '0247' => {
                      'none' => {
                                  'name' => 'GeForce Go 6100',
                                  'type' => 'legacy'
                                }
                    },
          '0250' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4600',
                                  'type' => 'legacy'
                                }
                    },
          '0251' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4400',
                                  'type' => 'legacy'
                                }
                    },
          '0253' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4200',
                                  'type' => 'legacy'
                                }
                    },
          '0258' => {
                      'none' => {
                                  'name' => 'Quadro4 900 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '0259' => {
                      'none' => {
                                  'name' => 'Quadro4 750 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '025B' => {
                      'none' => {
                                  'name' => 'Quadro4 700 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '0280' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4800',
                                  'type' => 'legacy'
                                }
                    },
          '0281' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4200 with AGP8X',
                                  'type' => 'legacy'
                                }
                    },
          '0282' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4800 SE',
                                  'type' => 'legacy'
                                }
                    },
          '0286' => {
                      'none' => {
                                  'name' => 'GeForce4 4200 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0288' => {
                      'none' => {
                                  'name' => 'Quadro4 980 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '0289' => {
                      'none' => {
                                  'name' => 'Quadro4 780 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '028C' => {
                      'none' => {
                                  'name' => 'Quadro4 700 GoGL',
                                  'type' => 'legacy'
                                }
                    },
          '0290' => {
                      'none' => {
                                  'name' => 'GeForce 7900 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0291' => {
                      'none' => {
                                  'name' => 'GeForce 7900 GT/GTO',
                                  'type' => 'legacy'
                                }
                    },
          '0292' => {
                      'none' => {
                                  'name' => 'GeForce 7900 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0293' => {
                      'none' => {
                                  'name' => 'GeForce 7950 GX2',
                                  'type' => 'legacy'
                                }
                    },
          '0294' => {
                      'none' => {
                                  'name' => 'GeForce 7950 GX2',
                                  'type' => 'legacy'
                                }
                    },
          '0295' => {
                      'none' => {
                                  'name' => 'GeForce 7950 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0297' => {
                      'none' => {
                                  'name' => 'GeForce Go 7950 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0298' => {
                      'none' => {
                                  'name' => 'GeForce Go 7900 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0299' => {
                      'none' => {
                                  'name' => 'Quadro NVS 510M',
                                  'type' => 'legacy'
                                }
                    },
          '029A' => {
                      'none' => {
                                  'name' => 'Quadro FX 2500M',
                                  'type' => 'legacy'
                                }
                    },
          '029B' => {
                      'none' => {
                                  'name' => 'Quadro FX 1500M',
                                  'type' => 'legacy'
                                }
                    },
          '029C' => {
                      'none' => {
                                  'name' => 'Quadro FX 5500',
                                  'type' => 'legacy'
                                }
                    },
          '029D' => {
                      'none' => {
                                  'name' => 'Quadro FX 3500',
                                  'type' => 'legacy'
                                }
                    },
          '029E' => {
                      'none' => {
                                  'name' => 'Quadro FX 1500',
                                  'type' => 'legacy'
                                }
                    },
          '029F' => {
                      'none' => {
                                  'name' => 'Quadro FX 4500 X2',
                                  'type' => 'legacy'
                                }
                    },
          '02E0' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '02E1' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GS',
                                  'type' => 'legacy'
                                }
                    },
          '02E2' => {
                      'none' => {
                                  'name' => 'GeForce 7300 GT',
                                  'type' => 'legacy'
                                }
                    },
          '02E3' => {
                      'none' => {
                                  'name' => 'GeForce 7900 GS',
                                  'type' => 'legacy'
                                }
                    },
          '02E4' => {
                      'none' => {
                                  'name' => 'GeForce 7950 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0301' => {
                      'none' => {
                                  'name' => 'GeForce FX 5800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0302' => {
                      'none' => {
                                  'name' => 'GeForce FX 5800',
                                  'type' => 'legacy'
                                }
                    },
          '0308' => {
                      'none' => {
                                  'name' => 'Quadro FX 2000',
                                  'type' => 'legacy'
                                }
                    },
          '0309' => {
                      'none' => {
                                  'name' => 'Quadro FX 1000',
                                  'type' => 'legacy'
                                }
                    },
          '0311' => {
                      'none' => {
                                  'name' => 'GeForce FX 5600 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0312' => {
                      'none' => {
                                  'name' => 'GeForce FX 5600',
                                  'type' => 'legacy'
                                }
                    },
          '0314' => {
                      'none' => {
                                  'name' => 'GeForce FX 5600XT',
                                  'type' => 'legacy'
                                }
                    },
          '031A' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5600',
                                  'type' => 'legacy'
                                }
                    },
          '031B' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5650',
                                  'type' => 'legacy'
                                }
                    },
          '031C' => {
                      'none' => {
                                  'name' => 'Quadro FX Go700',
                                  'type' => 'legacy'
                                }
                    },
          '0320' => {
                      'none' => {
                                  'name' => 'GeForce FX 5200',
                                  'type' => 'legacy'
                                }
                    },
          '0321' => {
                      'none' => {
                                  'name' => 'GeForce FX 5200 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0322' => {
                      'none' => {
                                  'name' => 'GeForce FX 5200',
                                  'type' => 'legacy'
                                }
                    },
          '0323' => {
                      'none' => {
                                  'name' => 'GeForce FX 5200LE',
                                  'type' => 'legacy'
                                }
                    },
          '0324' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5200',
                                  'type' => 'legacy'
                                }
                    },
          '0325' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5250',
                                  'type' => 'legacy'
                                }
                    },
          '0326' => {
                      'none' => {
                                  'name' => 'GeForce FX 5500',
                                  'type' => 'legacy'
                                }
                    },
          '0327' => {
                      'none' => {
                                  'name' => 'GeForce FX 5100',
                                  'type' => 'legacy'
                                }
                    },
          '0328' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5200 32M/64M',
                                  'type' => 'legacy'
                                }
                    },
          '032A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 55/280 PCI',
                                  'type' => 'legacy'
                                }
                    },
          '032B' => {
                      'none' => {
                                  'name' => 'Quadro FX 500/FX 600',
                                  'type' => 'legacy'
                                }
                    },
          '032C' => {
                      'none' => {
                                  'name' => 'GeForce FX Go53xx',
                                  'type' => 'legacy'
                                }
                    },
          '032D' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5100',
                                  'type' => 'legacy'
                                }
                    },
          '0330' => {
                      'none' => {
                                  'name' => 'GeForce FX 5900 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0331' => {
                      'none' => {
                                  'name' => 'GeForce FX 5900',
                                  'type' => 'legacy'
                                }
                    },
          '0332' => {
                      'none' => {
                                  'name' => 'GeForce FX 5900XT',
                                  'type' => 'legacy'
                                }
                    },
          '0333' => {
                      'none' => {
                                  'name' => 'GeForce FX 5950 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0334' => {
                      'none' => {
                                  'name' => 'GeForce FX 5900ZT',
                                  'type' => 'legacy'
                                }
                    },
          '0338' => {
                      'none' => {
                                  'name' => 'Quadro FX 3000',
                                  'type' => 'legacy'
                                }
                    },
          '033F' => {
                      'none' => {
                                  'name' => 'Quadro FX 700',
                                  'type' => 'legacy'
                                }
                    },
          '0341' => {
                      'none' => {
                                  'name' => 'GeForce FX 5700 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0342' => {
                      'none' => {
                                  'name' => 'GeForce FX 5700',
                                  'type' => 'legacy'
                                }
                    },
          '0343' => {
                      'none' => {
                                  'name' => 'GeForce FX 5700LE',
                                  'type' => 'legacy'
                                }
                    },
          '0344' => {
                      'none' => {
                                  'name' => 'GeForce FX 5700VE',
                                  'type' => 'legacy'
                                }
                    },
          '0347' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5700',
                                  'type' => 'legacy'
                                }
                    },
          '0348' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5700',
                                  'type' => 'legacy'
                                }
                    },
          '034C' => {
                      'none' => {
                                  'name' => 'Quadro FX Go1000',
                                  'type' => 'legacy'
                                }
                    },
          '034E' => {
                      'none' => {
                                  'name' => 'Quadro FX 1100',
                                  'type' => 'legacy'
                                }
                    },
          '038B' => {
                      'none' => {
                                  'name' => 'GeForce 7650 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0390' => {
                      'none' => {
                                  'name' => 'GeForce 7650 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0391' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0392' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0393' => {
                      'none' => {
                                  'name' => 'GeForce 7300 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0394' => {
                      'none' => {
                                  'name' => 'GeForce 7600 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0395' => {
                      'none' => {
                                  'name' => 'GeForce 7300 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0397' => {
                      'none' => {
                                  'name' => 'GeForce Go 7700',
                                  'type' => 'legacy'
                                }
                    },
          '0398' => {
                      'none' => {
                                  'name' => 'GeForce Go 7600',
                                  'type' => 'legacy'
                                }
                    },
          '0399' => {
                      'none' => {
                                  'name' => 'GeForce Go 7600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '039C' => {
                      'none' => {
                                  'name' => 'Quadro FX 560M',
                                  'type' => 'legacy'
                                }
                    },
          '039E' => {
                      'none' => {
                                  'name' => 'Quadro FX 560',
                                  'type' => 'legacy'
                                }
                    },
          '03D0' => {
                      'none' => {
                                  'name' => 'GeForce 6150SE nForce 430',
                                  'type' => 'legacy'
                                }
                    },
          '03D1' => {
                      'none' => {
                                  'name' => 'GeForce 6100 nForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '03D2' => {
                      'none' => {
                                  'name' => 'GeForce 6100 nForce 400',
                                  'type' => 'legacy'
                                }
                    },
          '03D5' => {
                      'none' => {
                                  'name' => 'GeForce 6100 nForce 420',
                                  'type' => 'legacy'
                                }
                    },
          '03D6' => {
                      'none' => {
                                  'name' => 'GeForce 7025 / nForce 630a',
                                  'type' => 'legacy'
                                }
                    },
          '0400' => {
                      'none' => {
                                  'name' => 'GeForce 8600 GTS',
                                  'type' => 'legacy'
                                }
                    },
          '0401' => {
                      'none' => {
                                  'name' => 'GeForce 8600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0402' => {
                      'none' => {
                                  'name' => 'GeForce 8600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0403' => {
                      'none' => {
                                  'name' => 'GeForce 8600 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0404' => {
                      'none' => {
                                  'name' => 'GeForce 8400 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0405' => {
                      'none' => {
                                  'name' => 'GeForce 9500M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0406' => {
                      'none' => {
                                  'name' => 'GeForce 8300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0407' => {
                      'none' => {
                                  'name' => 'GeForce 8600M GT',
                                  'type' => 'legacy'
                                }
                    },
          '0408' => {
                      'none' => {
                                  'name' => 'GeForce 9650M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0409' => {
                      'none' => {
                                  'name' => 'GeForce 8700M GT',
                                  'type' => 'legacy'
                                }
                    },
          '040A' => {
                      'none' => {
                                  'name' => 'Quadro FX 370',
                                  'type' => 'legacy'
                                }
                    },
          '040B' => {
                      'none' => {
                                  'name' => 'Quadro NVS 320M',
                                  'type' => 'legacy'
                                }
                    },
          '040C' => {
                      'none' => {
                                  'name' => 'Quadro FX 570M',
                                  'type' => 'legacy'
                                }
                    },
          '040D' => {
                      'none' => {
                                  'name' => 'Quadro FX 1600M',
                                  'type' => 'legacy'
                                }
                    },
          '040E' => {
                      'none' => {
                                  'name' => 'Quadro FX 570',
                                  'type' => 'legacy'
                                }
                    },
          '040F' => {
                      'none' => {
                                  'name' => 'Quadro FX 1700',
                                  'type' => 'legacy'
                                }
                    },
          '0410' => {
                      'none' => {
                                  'name' => 'GeForce GT 330',
                                  'type' => 'legacy'
                                }
                    },
          '0420' => {
                      'none' => {
                                  'name' => 'GeForce 8400 SE',
                                  'type' => 'legacy'
                                }
                    },
          '0421' => {
                      'none' => {
                                  'name' => 'GeForce 8500 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0422' => {
                      'none' => {
                                  'name' => 'GeForce 8400 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0423' => {
                      'none' => {
                                  'name' => 'GeForce 8300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0424' => {
                      'none' => {
                                  'name' => 'GeForce 8400 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0425' => {
                      'none' => {
                                  'name' => 'GeForce 8600M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0426' => {
                      'none' => {
                                  'name' => 'GeForce 8400M GT',
                                  'type' => 'legacy'
                                }
                    },
          '0427' => {
                      'none' => {
                                  'name' => 'GeForce 8400M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0428' => {
                      'none' => {
                                  'name' => 'GeForce 8400M G',
                                  'type' => 'legacy'
                                }
                    },
          '0429' => {
                      'none' => {
                                  'name' => 'Quadro NVS 140M',
                                  'type' => 'legacy'
                                }
                    },
          '042A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 130M',
                                  'type' => 'legacy'
                                }
                    },
          '042B' => {
                      'none' => {
                                  'name' => 'Quadro NVS 135M',
                                  'type' => 'legacy'
                                }
                    },
          '042C' => {
                      'none' => {
                                  'name' => 'GeForce 9400 GT',
                                  'type' => 'legacy'
                                }
                    },
          '042D' => {
                      'none' => {
                                  'name' => 'Quadro FX 360M',
                                  'type' => 'legacy'
                                }
                    },
          '042E' => {
                      'none' => {
                                  'name' => 'GeForce 9300M G',
                                  'type' => 'legacy'
                                }
                    },
          '042F' => {
                      'none' => {
                                  'name' => 'Quadro NVS 290',
                                  'type' => 'legacy'
                                }
                    },
          '0531' => {
                      'none' => {
                                  'name' => 'GeForce 7150M / nForce 630M',
                                  'type' => 'legacy'
                                }
                    },
          '0533' => {
                      'none' => {
                                  'name' => 'GeForce 7000M / nForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '053A' => {
                      'none' => {
                                  'name' => 'GeForce 7050 PV / nForce 630a',
                                  'type' => 'legacy'
                                }
                    },
          '053B' => {
                      'none' => {
                                  'name' => 'GeForce 7050 PV / nForce 630a',
                                  'type' => 'legacy'
                                }
                    },
          '053E' => {
                      'none' => {
                                  'name' => 'GeForce 7025 / nForce 630a',
                                  'type' => 'legacy'
                                }
                    },
          '05E0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 295',
                                  'type' => 'legacy'
                                }
                    },
          '05E1' => {
                      'none' => {
                                  'name' => 'GeForce GTX 280',
                                  'type' => 'legacy'
                                }
                    },
          '05E2' => {
                      'none' => {
                                  'name' => 'GeForce GTX 260',
                                  'type' => 'legacy'
                                }
                    },
          '05E3' => {
                      'none' => {
                                  'name' => 'GeForce GTX 285',
                                  'type' => 'legacy'
                                }
                    },
          '05E6' => {
                      'none' => {
                                  'name' => 'GeForce GTX 275',
                                  'type' => 'legacy'
                                }
                    },
          '05E7' => {
                      '10DE0595' => {
                                      'name' => 'Tesla T10 Processor',
                                      'type' => 'legacy'
                                    },
                      '10DE068F' => {
                                      'name' => 'Tesla T10 Processor',
                                      'type' => 'legacy'
                                    },
                      '10DE0697' => {
                                      'name' => 'Tesla M1060',
                                      'type' => 'legacy'
                                    },
                      '10DE0714' => {
                                      'name' => 'Tesla M1060',
                                      'type' => 'legacy'
                                    },
                      '10DE0743' => {
                                      'name' => 'Tesla M1060',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla C1060',
                                  'type' => 'legacy'
                                }
                    },
          '05EA' => {
                      'none' => {
                                  'name' => 'GeForce GTX 260',
                                  'type' => 'legacy'
                                }
                    },
          '05EB' => {
                      'none' => {
                                  'name' => 'GeForce GTX 295',
                                  'type' => 'legacy'
                                }
                    },
          '05ED' => {
                      'none' => {
                                  'name' => 'Quadroplex 2200 D2',
                                  'type' => 'legacy'
                                }
                    },
          '05F8' => {
                      'none' => {
                                  'name' => 'Quadroplex 2200 S4',
                                  'type' => 'legacy'
                                }
                    },
          '05F9' => {
                      'none' => {
                                  'name' => 'Quadro CX',
                                  'type' => 'legacy'
                                }
                    },
          '05FD' => {
                      'none' => {
                                  'name' => 'Quadro FX 5800',
                                  'type' => 'legacy'
                                }
                    },
          '05FE' => {
                      'none' => {
                                  'name' => 'Quadro FX 4800',
                                  'type' => 'legacy'
                                }
                    },
          '05FF' => {
                      'none' => {
                                  'name' => 'Quadro FX 3800',
                                  'type' => 'legacy'
                                }
                    },
          '0600' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GTS 512',
                                  'type' => 'legacy'
                                }
                    },
          '0601' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0602' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0603' => {
                      'none' => {
                                  'name' => 'GeForce GT 230',
                                  'type' => 'legacy'
                                }
                    },
          '0604' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GX2',
                                  'type' => 'legacy'
                                }
                    },
          '0605' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0606' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0607' => {
                      'none' => {
                                  'name' => 'GeForce GTS 240',
                                  'type' => 'legacy'
                                }
                    },
          '0608' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0609' => {
                      '106B00A7' => {
                                      'name' => 'GeForce 8800 GS',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 8800M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '060A' => {
                      'none' => {
                                  'name' => 'GeForce GTX 280M',
                                  'type' => 'legacy'
                                }
                    },
          '060B' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GT',
                                  'type' => 'legacy'
                                }
                    },
          '060C' => {
                      'none' => {
                                  'name' => 'GeForce 8800M GTX',
                                  'type' => 'legacy'
                                }
                    },
          '060D' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '060F' => {
                      'none' => {
                                  'name' => 'GeForce GTX 285M',
                                  'type' => 'legacy'
                                }
                    },
          '0610' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GSO',
                                  'type' => 'legacy'
                                }
                    },
          '0611' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0612' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GTX/9800 GTX+',
                                  'type' => 'legacy'
                                }
                    },
          '0613' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GTX+',
                                  'type' => 'legacy'
                                }
                    },
          '0614' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0615' => {
                      'none' => {
                                  'name' => 'GeForce GTS 250',
                                  'type' => 'legacy'
                                }
                    },
          '0617' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0618' => {
                      'none' => {
                                  'name' => 'GeForce GTX 260M',
                                  'type' => 'legacy'
                                }
                    },
          '0619' => {
                      'none' => {
                                  'name' => 'Quadro FX 4700 X2',
                                  'type' => 'legacy'
                                }
                    },
          '061A' => {
                      'none' => {
                                  'name' => 'Quadro FX 3700',
                                  'type' => 'legacy'
                                }
                    },
          '061B' => {
                      'none' => {
                                  'name' => 'Quadro VX 200',
                                  'type' => 'legacy'
                                }
                    },
          '061C' => {
                      'none' => {
                                  'name' => 'Quadro FX 3600M',
                                  'type' => 'legacy'
                                }
                    },
          '061D' => {
                      'none' => {
                                  'name' => 'Quadro FX 2800M',
                                  'type' => 'legacy'
                                }
                    },
          '061E' => {
                      'none' => {
                                  'name' => 'Quadro FX 3700M',
                                  'type' => 'legacy'
                                }
                    },
          '061F' => {
                      'none' => {
                                  'name' => 'Quadro FX 3800M',
                                  'type' => 'legacy'
                                }
                    },
          '0621' => {
                      'none' => {
                                  'name' => 'GeForce GT 230',
                                  'type' => 'legacy'
                                }
                    },
          '0622' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0623' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0625' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GSO 512',
                                  'type' => 'legacy'
                                }
                    },
          '0626' => {
                      'none' => {
                                  'name' => 'GeForce GT 130',
                                  'type' => 'legacy'
                                }
                    },
          '0627' => {
                      'none' => {
                                  'name' => 'GeForce GT 140',
                                  'type' => 'legacy'
                                }
                    },
          '0628' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '062A' => {
                      'none' => {
                                  'name' => 'GeForce 9700M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '062B' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GS',
                                  'type' => 'legacy'
                                }
                    },
          '062C' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '062D' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '062E' => {
                      '106B0605' => {
                                      'name' => 'GeForce GT 130',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 9600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0630' => {
                      'none' => {
                                  'name' => 'GeForce 9700 S',
                                  'type' => 'legacy'
                                }
                    },
          '0631' => {
                      'none' => {
                                  'name' => 'GeForce GTS 160M',
                                  'type' => 'legacy'
                                }
                    },
          '0632' => {
                      'none' => {
                                  'name' => 'GeForce GTS 150M',
                                  'type' => 'legacy'
                                }
                    },
          '0635' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GSO',
                                  'type' => 'legacy'
                                }
                    },
          '0637' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0638' => {
                      'none' => {
                                  'name' => 'Quadro FX 1800',
                                  'type' => 'legacy'
                                }
                    },
          '063A' => {
                      'none' => {
                                  'name' => 'Quadro FX 2700M',
                                  'type' => 'legacy'
                                }
                    },
          '0640' => {
                      'none' => {
                                  'name' => 'GeForce 9500 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0641' => {
                      'none' => {
                                  'name' => 'GeForce 9400 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0643' => {
                      'none' => {
                                  'name' => 'GeForce 9500 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0644' => {
                      'none' => {
                                  'name' => 'GeForce 9500 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0645' => {
                      'none' => {
                                  'name' => 'GeForce 9500 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0646' => {
                      'none' => {
                                  'name' => 'GeForce GT 120',
                                  'type' => 'legacy'
                                }
                    },
          '0647' => {
                      'none' => {
                                  'name' => 'GeForce 9600M GT',
                                  'type' => 'legacy'
                                }
                    },
          '0648' => {
                      'none' => {
                                  'name' => 'GeForce 9600M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0649' => {
                      '1043202D' => {
                                      'name' => 'GeForce GT 220M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 9600M GT',
                                  'type' => 'legacy'
                                }
                    },
          '064A' => {
                      'none' => {
                                  'name' => 'GeForce 9700M GT',
                                  'type' => 'legacy'
                                }
                    },
          '064B' => {
                      'none' => {
                                  'name' => 'GeForce 9500M G',
                                  'type' => 'legacy'
                                }
                    },
          '064C' => {
                      'none' => {
                                  'name' => 'GeForce 9650M GT',
                                  'type' => 'legacy'
                                }
                    },
          '0651' => {
                      'none' => {
                                  'name' => 'GeForce G 110M',
                                  'type' => 'legacy'
                                }
                    },
          '0652' => {
                      '152D0850' => {
                                      'name' => 'GeForce GT 240M LE',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 130M',
                                  'type' => 'legacy'
                                }
                    },
          '0653' => {
                      'none' => {
                                  'name' => 'GeForce GT 120M',
                                  'type' => 'legacy'
                                }
                    },
          '0654' => {
                      '104314A2' => {
                                      'name' => 'GeForce GT 320M',
                                      'type' => 'legacy'
                                    },
                      '104314D2' => {
                                      'name' => 'GeForce GT 320M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 220M',
                                  'type' => 'legacy'
                                }
                    },
          '0655' => {
                      '106B0633' => {
                                      'name' => 'GeForce GT 120',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'legacy'
                                }
                    },
          '0656' => {
                      '106B0693' => {
                                      'name' => 'GeForce GT 120',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'legacy'
                                }
                    },
          '0658' => {
                      'none' => {
                                  'name' => 'Quadro FX 380',
                                  'type' => 'legacy'
                                }
                    },
          '0659' => {
                      'none' => {
                                  'name' => 'Quadro FX 580',
                                  'type' => 'legacy'
                                }
                    },
          '065A' => {
                      'none' => {
                                  'name' => 'Quadro FX 1700M',
                                  'type' => 'legacy'
                                }
                    },
          '065B' => {
                      'none' => {
                                  'name' => 'GeForce 9400 GT',
                                  'type' => 'legacy'
                                }
                    },
          '065C' => {
                      'none' => {
                                  'name' => 'Quadro FX 770M',
                                  'type' => 'legacy'
                                }
                    },
          '06C0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 480',
                                  'type' => 'legacy'
                                }
                    },
          '06C4' => {
                      'none' => {
                                  'name' => 'GeForce GTX 465',
                                  'type' => 'legacy'
                                }
                    },
          '06CA' => {
                      'none' => {
                                  'name' => 'GeForce GTX 480M',
                                  'type' => 'legacy'
                                }
                    },
          '06CD' => {
                      'none' => {
                                  'name' => 'GeForce GTX 470',
                                  'type' => 'legacy'
                                }
                    },
          '06D1' => {
                      '10DE0771' => {
                                      'name' => 'Tesla C2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0772' => {
                                      'name' => 'Tesla C2070',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla C2050 / C2070',
                                  'type' => 'legacy'
                                }
                    },
          '06D2' => {
                      '10DE088F' => {
                                      'name' => 'Tesla X2070',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla M2070',
                                  'type' => 'legacy'
                                }
                    },
          '06D8' => {
                      'none' => {
                                  'name' => 'Quadro 6000',
                                  'type' => 'legacy'
                                }
                    },
          '06D9' => {
                      'none' => {
                                  'name' => 'Quadro 5000',
                                  'type' => 'legacy'
                                }
                    },
          '06DA' => {
                      'none' => {
                                  'name' => 'Quadro 5000M',
                                  'type' => 'legacy'
                                }
                    },
          '06DC' => {
                      'none' => {
                                  'name' => 'Quadro 6000',
                                  'type' => 'legacy'
                                }
                    },
          '06DD' => {
                      'none' => {
                                  'name' => 'Quadro 4000',
                                  'type' => 'legacy'
                                }
                    },
          '06DE' => {
                      '10DE0773' => {
                                      'name' => 'Tesla S2050',
                                      'type' => 'legacy'
                                    },
                      '10DE082F' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0840' => {
                                      'name' => 'Tesla X2070',
                                      'type' => 'legacy'
                                    },
                      '10DE0842' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0846' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0866' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0907' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE091E' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla T20 Processor',
                                  'type' => 'legacy'
                                }
                    },
          '06DF' => {
                      'none' => {
                                  'name' => 'Tesla M2070-Q',
                                  'type' => 'legacy'
                                }
                    },
          '06E0' => {
                      'none' => {
                                  'name' => 'GeForce 9300 GE',
                                  'type' => 'legacy'
                                }
                    },
          '06E1' => {
                      'none' => {
                                  'name' => 'GeForce 9300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '06E2' => {
                      'none' => {
                                  'name' => 'GeForce 8400',
                                  'type' => 'legacy'
                                }
                    },
          '06E3' => {
                      'none' => {
                                  'name' => 'GeForce 8400 SE',
                                  'type' => 'legacy'
                                }
                    },
          '06E4' => {
                      'none' => {
                                  'name' => 'GeForce 8400 GS',
                                  'type' => 'legacy'
                                }
                    },
          '06E5' => {
                      'none' => {
                                  'name' => 'GeForce 9300M GS',
                                  'type' => 'legacy'
                                }
                    },
          '06E6' => {
                      'none' => {
                                  'name' => 'GeForce G100',
                                  'type' => 'legacy'
                                }
                    },
          '06E7' => {
                      'none' => {
                                  'name' => 'GeForce 9300 SE',
                                  'type' => 'legacy'
                                }
                    },
          '06E8' => {
                      '103C360B' => {
                                      'name' => 'GeForce 9200M GE',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 9200M GS',
                                  'type' => 'legacy'
                                }
                    },
          '06E9' => {
                      'none' => {
                                  'name' => 'GeForce 9300M GS',
                                  'type' => 'legacy'
                                }
                    },
          '06EA' => {
                      'none' => {
                                  'name' => 'Quadro NVS 150M',
                                  'type' => 'legacy'
                                }
                    },
          '06EB' => {
                      'none' => {
                                  'name' => 'Quadro NVS 160M',
                                  'type' => 'legacy'
                                }
                    },
          '06EC' => {
                      'none' => {
                                  'name' => 'GeForce G 105M',
                                  'type' => 'legacy'
                                }
                    },
          '06EF' => {
                      'none' => {
                                  'name' => 'GeForce G 103M',
                                  'type' => 'legacy'
                                }
                    },
          '06F1' => {
                      'none' => {
                                  'name' => 'GeForce G105M',
                                  'type' => 'legacy'
                                }
                    },
          '06F8' => {
                      'none' => {
                                  'name' => 'Quadro NVS 420',
                                  'type' => 'legacy'
                                }
                    },
          '06F9' => {
                      '10DE060D' => {
                                      'name' => 'Quadro FX 370 Low Profile',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Quadro FX 370 LP',
                                  'type' => 'legacy'
                                }
                    },
          '06FA' => {
                      'none' => {
                                  'name' => 'Quadro NVS 450',
                                  'type' => 'legacy'
                                }
                    },
          '06FB' => {
                      'none' => {
                                  'name' => 'Quadro FX 370M',
                                  'type' => 'legacy'
                                }
                    },
          '06FD' => {
                      'none' => {
                                  'name' => 'Quadro NVS 295',
                                  'type' => 'legacy'
                                }
                    },
          '06FF' => {
                      '10DE0711' => {
                                      'name' => 'HICx8 + Graphics',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'HICx16 + Graphics',
                                  'type' => 'legacy'
                                }
                    },
          '07E0' => {
                      'none' => {
                                  'name' => 'GeForce 7150 / nForce 630i',
                                  'type' => 'legacy'
                                }
                    },
          '07E1' => {
                      'none' => {
                                  'name' => 'GeForce 7100 / nForce 630i',
                                  'type' => 'legacy'
                                }
                    },
          '07E2' => {
                      'none' => {
                                  'name' => 'GeForce 7050 / nForce 630i',
                                  'type' => 'legacy'
                                }
                    },
          '07E3' => {
                      'none' => {
                                  'name' => 'GeForce 7050 / nForce 610i',
                                  'type' => 'legacy'
                                }
                    },
          '07E5' => {
                      'none' => {
                                  'name' => 'GeForce 7050 / nForce 620i',
                                  'type' => 'legacy'
                                }
                    },
          '0840' => {
                      'none' => {
                                  'name' => 'GeForce 8200M',
                                  'type' => 'legacy'
                                }
                    },
          '0844' => {
                      'none' => {
                                  'name' => 'GeForce 9100M G',
                                  'type' => 'legacy'
                                }
                    },
          '0845' => {
                      'none' => {
                                  'name' => 'GeForce 8200M G',
                                  'type' => 'legacy'
                                }
                    },
          '0846' => {
                      'none' => {
                                  'name' => 'GeForce 9200',
                                  'type' => 'legacy'
                                }
                    },
          '0847' => {
                      'none' => {
                                  'name' => 'GeForce 9100',
                                  'type' => 'legacy'
                                }
                    },
          '0848' => {
                      'none' => {
                                  'name' => 'GeForce 8300',
                                  'type' => 'legacy'
                                }
                    },
          '0849' => {
                      'none' => {
                                  'name' => 'GeForce 8200',
                                  'type' => 'legacy'
                                }
                    },
          '084A' => {
                      'none' => {
                                  'name' => 'nForce 730a',
                                  'type' => 'legacy'
                                }
                    },
          '084B' => {
                      'none' => {
                                  'name' => 'GeForce 9200',
                                  'type' => 'legacy'
                                }
                    },
          '084C' => {
                      'none' => {
                                  'name' => 'nForce 980a/780a SLI',
                                  'type' => 'legacy'
                                }
                    },
          '084D' => {
                      'none' => {
                                  'name' => 'nForce 750a SLI',
                                  'type' => 'legacy'
                                }
                    },
          '084F' => {
                      'none' => {
                                  'name' => 'GeForce 8100 / nForce 720a',
                                  'type' => 'legacy'
                                }
                    },
          '0860' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '0861' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '0862' => {
                      'none' => {
                                  'name' => 'GeForce 9400M G',
                                  'type' => 'legacy'
                                }
                    },
          '0863' => {
                      'none' => {
                                  'name' => 'GeForce 9400M',
                                  'type' => 'legacy'
                                }
                    },
          '0864' => {
                      'none' => {
                                  'name' => 'GeForce 9300',
                                  'type' => 'legacy'
                                }
                    },
          '0865' => {
                      'none' => {
                                  'name' => 'ION',
                                  'type' => 'legacy'
                                }
                    },
          '0866' => {
                      '106B00B1' => {
                                      'name' => 'GeForce 9400M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 9400M G',
                                  'type' => 'legacy'
                                }
                    },
          '0867' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '0868' => {
                      'none' => {
                                  'name' => 'nForce 760i SLI',
                                  'type' => 'legacy'
                                }
                    },
          '0869' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '086A' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '086C' => {
                      'none' => {
                                  'name' => 'GeForce 9300 / nForce 730i',
                                  'type' => 'legacy'
                                }
                    },
          '086D' => {
                      'none' => {
                                  'name' => 'GeForce 9200',
                                  'type' => 'legacy'
                                }
                    },
          '086E' => {
                      'none' => {
                                  'name' => 'GeForce 9100M G',
                                  'type' => 'legacy'
                                }
                    },
          '086F' => {
                      'none' => {
                                  'name' => 'GeForce 8200M G',
                                  'type' => 'legacy'
                                }
                    },
          '0870' => {
                      'none' => {
                                  'name' => 'GeForce 9400M',
                                  'type' => 'legacy'
                                }
                    },
          '0871' => {
                      'none' => {
                                  'name' => 'GeForce 9200',
                                  'type' => 'legacy'
                                }
                    },
          '0872' => {
                      '10431C42' => {
                                      'name' => 'GeForce G205M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce G102M',
                                  'type' => 'legacy'
                                }
                    },
          '0873' => {
                      '10431C52' => {
                                      'name' => 'GeForce G205M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce G102M',
                                  'type' => 'legacy'
                                }
                    },
          '0874' => {
                      'none' => {
                                  'name' => 'ION',
                                  'type' => 'legacy'
                                }
                    },
          '0876' => {
                      'none' => {
                                  'name' => 'ION',
                                  'type' => 'legacy'
                                }
                    },
          '087A' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '087D' => {
                      'none' => {
                                  'name' => 'ION',
                                  'type' => 'legacy'
                                }
                    },
          '087E' => {
                      'none' => {
                                  'name' => 'ION LE',
                                  'type' => 'legacy'
                                }
                    },
          '087F' => {
                      'none' => {
                                  'name' => 'ION LE',
                                  'type' => 'legacy'
                                }
                    },
          '08A0' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '08A2' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '08A3' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '08A4' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '08A5' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '0A20' => {
                      'none' => {
                                  'name' => 'GeForce GT 220',
                                  'type' => 'legacy'
                                }
                    },
          '0A22' => {
                      'none' => {
                                  'name' => 'GeForce 315',
                                  'type' => 'legacy'
                                }
                    },
          '0A23' => {
                      'none' => {
                                  'name' => 'GeForce 210',
                                  'type' => 'legacy'
                                }
                    },
          '0A26' => {
                      'none' => {
                                  'name' => 'GeForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '0A27' => {
                      'none' => {
                                  'name' => 'GeForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '0A28' => {
                      'none' => {
                                  'name' => 'GeForce GT 230M',
                                  'type' => 'legacy'
                                }
                    },
          '0A29' => {
                      'none' => {
                                  'name' => 'GeForce GT 330M',
                                  'type' => 'legacy'
                                }
                    },
          '0A2A' => {
                      'none' => {
                                  'name' => 'GeForce GT 230M',
                                  'type' => 'legacy'
                                }
                    },
          '0A2B' => {
                      'none' => {
                                  'name' => 'GeForce GT 330M',
                                  'type' => 'legacy'
                                }
                    },
          '0A2C' => {
                      'none' => {
                                  'name' => 'NVS 5100M',
                                  'type' => 'legacy'
                                }
                    },
          '0A2D' => {
                      'none' => {
                                  'name' => 'GeForce GT 320M',
                                  'type' => 'legacy'
                                }
                    },
          '0A32' => {
                      'none' => {
                                  'name' => 'GeForce GT 415',
                                  'type' => 'legacy'
                                }
                    },
          '0A34' => {
                      'none' => {
                                  'name' => 'GeForce GT 240M',
                                  'type' => 'legacy'
                                }
                    },
          '0A35' => {
                      'none' => {
                                  'name' => 'GeForce GT 325M',
                                  'type' => 'legacy'
                                }
                    },
          '0A38' => {
                      'none' => {
                                  'name' => 'Quadro 400',
                                  'type' => 'legacy'
                                }
                    },
          '0A3C' => {
                      'none' => {
                                  'name' => 'Quadro FX 880M',
                                  'type' => 'legacy'
                                }
                    },
          '0A60' => {
                      'none' => {
                                  'name' => 'GeForce G210',
                                  'type' => 'legacy'
                                }
                    },
          '0A62' => {
                      'none' => {
                                  'name' => 'GeForce 205',
                                  'type' => 'legacy'
                                }
                    },
          '0A63' => {
                      'none' => {
                                  'name' => 'GeForce 310',
                                  'type' => 'legacy'
                                }
                    },
          '0A64' => {
                      'none' => {
                                  'name' => 'Second Generation ION',
                                  'type' => 'legacy'
                                }
                    },
          '0A65' => {
                      'none' => {
                                  'name' => 'GeForce 210',
                                  'type' => 'legacy'
                                }
                    },
          '0A66' => {
                      'none' => {
                                  'name' => 'GeForce 310',
                                  'type' => 'legacy'
                                }
                    },
          '0A67' => {
                      'none' => {
                                  'name' => 'GeForce 315',
                                  'type' => 'legacy'
                                }
                    },
          '0A68' => {
                      'none' => {
                                  'name' => 'GeForce G105M',
                                  'type' => 'legacy'
                                }
                    },
          '0A69' => {
                      'none' => {
                                  'name' => 'GeForce G105M',
                                  'type' => 'legacy'
                                }
                    },
          '0A6A' => {
                      'none' => {
                                  'name' => 'NVS 2100M',
                                  'type' => 'legacy'
                                }
                    },
          '0A6C' => {
                      'none' => {
                                  'name' => 'NVS 3100M',
                                  'type' => 'legacy'
                                }
                    },
          '0A6E' => {
                      '17AA3607' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 305M',
                                  'type' => 'legacy'
                                }
                    },
          '0A6F' => {
                      'none' => {
                                  'name' => 'Second Generation ION',
                                  'type' => 'legacy'
                                }
                    },
          '0A70' => {
                      '17AA3605' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      '17AA3617' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 310M',
                                  'type' => 'legacy'
                                }
                    },
          '0A71' => {
                      'none' => {
                                  'name' => 'GeForce 305M',
                                  'type' => 'legacy'
                                }
                    },
          '0A72' => {
                      'none' => {
                                  'name' => 'GeForce 310M',
                                  'type' => 'legacy'
                                }
                    },
          '0A73' => {
                      '17AA3607' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      '17AA3610' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 305M',
                                  'type' => 'legacy'
                                }
                    },
          '0A74' => {
                      '17AA903A' => {
                                      'name' => 'GeForce G210',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce G210M',
                                  'type' => 'legacy'
                                }
                    },
          '0A75' => {
                      '17AA3605' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 310M',
                                  'type' => 'legacy'
                                }
                    },
          '0A76' => {
                      'none' => {
                                  'name' => 'Second Generation ION',
                                  'type' => 'legacy'
                                }
                    },
          '0A78' => {
                      'none' => {
                                  'name' => 'Quadro FX 380 LP',
                                  'type' => 'legacy'
                                }
                    },
          '0A7A' => {
                      '1462AA51' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1462AA58' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1462AC71' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1462AC82' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '16423980' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '17AA3950' => {
                                      'name' => 'GeForce 405M',
                                      'type' => 'legacy'
                                    },
                      '17AA397D' => {
                                      'name' => 'GeForce 405M',
                                      'type' => 'legacy'
                                    },
                      '1B0A90B4' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1BFD0003' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1BFD8006' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 315M',
                                  'type' => 'legacy'
                                }
                    },
          '0A7C' => {
                      'none' => {
                                  'name' => 'Quadro FX 380M',
                                  'type' => 'legacy'
                                }
                    },
          '0CA0' => {
                      'none' => {
                                  'name' => 'GeForce GT 330',
                                  'type' => 'legacy'
                                }
                    },
          '0CA2' => {
                      'none' => {
                                  'name' => 'GeForce GT 320',
                                  'type' => 'legacy'
                                }
                    },
          '0CA3' => {
                      'none' => {
                                  'name' => 'GeForce GT 240',
                                  'type' => 'legacy'
                                }
                    },
          '0CA4' => {
                      'none' => {
                                  'name' => 'GeForce GT 340',
                                  'type' => 'legacy'
                                }
                    },
          '0CA5' => {
                      'none' => {
                                  'name' => 'GeForce GT 220',
                                  'type' => 'legacy'
                                }
                    },
          '0CA7' => {
                      'none' => {
                                  'name' => 'GeForce GT 330',
                                  'type' => 'legacy'
                                }
                    },
          '0CA8' => {
                      'none' => {
                                  'name' => 'GeForce GTS 260M',
                                  'type' => 'legacy'
                                }
                    },
          '0CA9' => {
                      'none' => {
                                  'name' => 'GeForce GTS 250M',
                                  'type' => 'legacy'
                                }
                    },
          '0CAC' => {
                      'none' => {
                                  'name' => 'GeForce GT 220',
                                  'type' => 'legacy'
                                }
                    },
          '0CAF' => {
                      'none' => {
                                  'name' => 'GeForce GT 335M',
                                  'type' => 'legacy'
                                }
                    },
          '0CB0' => {
                      'none' => {
                                  'name' => 'GeForce GTS 350M',
                                  'type' => 'legacy'
                                }
                    },
          '0CB1' => {
                      'none' => {
                                  'name' => 'GeForce GTS 360M',
                                  'type' => 'legacy'
                                }
                    },
          '0CBC' => {
                      'none' => {
                                  'name' => 'Quadro FX 1800M',
                                  'type' => 'legacy'
                                }
                    },
          '0DC0' => {
                      'none' => {
                                  'name' => 'GeForce GT 440',
                                  'type' => 'legacy'
                                }
                    },
          '0DC4' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '0DC5' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '0DC6' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '0DCD' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '0DCE' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '0DD1' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460M',
                                  'type' => 'legacy'
                                }
                    },
          '0DD2' => {
                      'none' => {
                                  'name' => 'GeForce GT 445M',
                                  'type' => 'legacy'
                                }
                    },
          '0DD3' => {
                      'none' => {
                                  'name' => 'GeForce GT 435M',
                                  'type' => 'legacy'
                                }
                    },
          '0DD6' => {
                      'none' => {
                                  'name' => 'GeForce GT 550M',
                                  'type' => 'legacy'
                                }
                    },
          '0DD8' => {
                      '10DE0914' => {
                                      'name' => 'Quadro 2000D',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Quadro 2000',
                                  'type' => 'legacy'
                                }
                    },
          '0DDA' => {
                      'none' => {
                                  'name' => 'Quadro 2000M',
                                  'type' => 'legacy'
                                }
                    },
          '0DE0' => {
                      'none' => {
                                  'name' => 'GeForce GT 440',
                                  'type' => 'legacy'
                                }
                    },
          '0DE1' => {
                      'none' => {
                                  'name' => 'GeForce GT 430',
                                  'type' => 'legacy'
                                }
                    },
          '0DE2' => {
                      'none' => {
                                  'name' => 'GeForce GT 420',
                                  'type' => 'legacy'
                                }
                    },
          '0DE3' => {
                      'none' => {
                                  'name' => 'GeForce GT 635M',
                                  'type' => 'legacy'
                                }
                    },
          '0DE4' => {
                      'none' => {
                                  'name' => 'GeForce GT 520',
                                  'type' => 'legacy'
                                }
                    },
          '0DE5' => {
                      'none' => {
                                  'name' => 'GeForce GT 530',
                                  'type' => 'legacy'
                                }
                    },
          '0DE7' => {
                      'none' => {
                                  'name' => 'GeForce GT 610',
                                  'type' => 'legacy'
                                }
                    },
          '0DE8' => {
                      'none' => {
                                  'name' => 'GeForce GT 620M',
                                  'type' => 'legacy'
                                }
                    },
          '0DE9' => {
                      '10250692' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250725' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250728' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025072B' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025072E' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250753' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250754' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA3977' => {
                                      'name' => 'GeForce GT 640M LE',
                                      'type' => 'legacy'
                                    },
                      '1B0A2210' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 630M',
                                  'type' => 'legacy'
                                }
                    },
          '0DEA' => {
                      '17AA365A' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      '17AA365B' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      '17AA365E' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      '17AA3660' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      '17AA366C' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '0DEB' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '0DEC' => {
                      'none' => {
                                  'name' => 'GeForce GT 525M',
                                  'type' => 'legacy'
                                }
                    },
          '0DED' => {
                      'none' => {
                                  'name' => 'GeForce GT 520M',
                                  'type' => 'legacy'
                                }
                    },
          '0DEE' => {
                      'none' => {
                                  'name' => 'GeForce GT 415M',
                                  'type' => 'legacy'
                                }
                    },
          '0DEF' => {
                      'none' => {
                                  'name' => 'NVS 5400M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF0' => {
                      'none' => {
                                  'name' => 'GeForce GT 425M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF1' => {
                      'none' => {
                                  'name' => 'GeForce GT 420M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF2' => {
                      'none' => {
                                  'name' => 'GeForce GT 435M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF3' => {
                      'none' => {
                                  'name' => 'GeForce GT 420M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF4' => {
                      '152D0952' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '152D0953' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 540M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF5' => {
                      'none' => {
                                  'name' => 'GeForce GT 525M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF6' => {
                      'none' => {
                                  'name' => 'GeForce GT 550M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF7' => {
                      'none' => {
                                  'name' => 'GeForce GT 520M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF8' => {
                      'none' => {
                                  'name' => 'Quadro 600',
                                  'type' => 'legacy'
                                }
                    },
          '0DF9' => {
                      'none' => {
                                  'name' => 'Quadro 500M',
                                  'type' => 'legacy'
                                }
                    },
          '0DFA' => {
                      'none' => {
                                  'name' => 'Quadro 1000M',
                                  'type' => 'legacy'
                                }
                    },
          '0DFC' => {
                      'none' => {
                                  'name' => 'NVS 5200M',
                                  'type' => 'legacy'
                                }
                    },
          '0E22' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460',
                                  'type' => 'legacy'
                                }
                    },
          '0E23' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460 SE',
                                  'type' => 'legacy'
                                }
                    },
          '0E24' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460',
                                  'type' => 'legacy'
                                }
                    },
          '0E30' => {
                      'none' => {
                                  'name' => 'GeForce GTX 470M',
                                  'type' => 'legacy'
                                }
                    },
          '0E31' => {
                      'none' => {
                                  'name' => 'GeForce GTX 485M',
                                  'type' => 'legacy'
                                }
                    },
          '0E3A' => {
                      'none' => {
                                  'name' => 'Quadro 3000M',
                                  'type' => 'legacy'
                                }
                    },
          '0E3B' => {
                      'none' => {
                                  'name' => 'Quadro 4000M',
                                  'type' => 'legacy'
                                }
                    },
          '0F00' => {
                      'none' => {
                                  'name' => 'GeForce GT 630',
                                  'type' => 'legacy'
                                }
                    },
          '0F01' => {
                      'none' => {
                                  'name' => 'GeForce GT 620',
                                  'type' => 'legacy'
                                }
                    },
          '0F02' => {
                      'none' => {
                                  'name' => 'GeForce GT 730',
                                  'type' => 'legacy'
                                }
                    },
          '0F03' => {
                      'none' => {
                                  'name' => 'GeForce GT 610',
                                  'type' => 'legacy'
                                }
                    },
          '0FC6' => {
                      'none' => {
                                  'name' => 'GeForce GTX 650',
                                  'type' => 'legacy'
                                }
                    },
          '0FC8' => {
                      'none' => {
                                  'name' => 'GeForce GT 740',
                                  'type' => 'legacy'
                                }
                    },
          '0FC9' => {
                      'none' => {
                                  'name' => 'GeForce GT 730',
                                  'type' => 'legacy'
                                }
                    },
          '0FCD' => {
                      'none' => {
                                  'name' => 'GeForce GT 755M',
                                  'type' => 'legacy'
                                }
                    },
          '0FCE' => {
                      'none' => {
                                  'name' => 'GeForce GT 640M LE',
                                  'type' => 'legacy'
                                }
                    },
          '0FD1' => {
                      'none' => {
                                  'name' => 'GeForce GT 650M',
                                  'type' => 'legacy'
                                }
                    },
          '0FD2' => {
                      '10280595' => {
                                      'name' => 'GeForce GT 640M LE',
                                      'type' => 'legacy'
                                    },
                      '102805B2' => {
                                      'name' => 'GeForce GT 640M LE',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 640M',
                                  'type' => 'legacy'
                                }
                    },
          '0FD3' => {
                      'none' => {
                                  'name' => 'GeForce GT 640M LE',
                                  'type' => 'legacy'
                                }
                    },
          '0FD4' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660M',
                                  'type' => 'legacy'
                                }
                    },
          '0FD5' => {
                      'none' => {
                                  'name' => 'GeForce GT 650M',
                                  'type' => 'legacy'
                                }
                    },
          '0FD8' => {
                      'none' => {
                                  'name' => 'GeForce GT 640M',
                                  'type' => 'legacy'
                                }
                    },
          '0FD9' => {
                      'none' => {
                                  'name' => 'GeForce GT 645M',
                                  'type' => 'legacy'
                                }
                    },
          '0FDF' => {
                      'none' => {
                                  'name' => 'GeForce GT 740M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE1' => {
                      'none' => {
                                  'name' => 'GeForce GT 730M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE2' => {
                      'none' => {
                                  'name' => 'GeForce GT 745M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE3' => {
                      '103C2B16' => {
                                      'name' => 'GeForce GT 745A',
                                      'type' => 'legacy'
                                    },
                      '17AA3675' => {
                                      'name' => 'GeForce GT 745A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 745M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE4' => {
                      'none' => {
                                  'name' => 'GeForce GT 750M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE9' => {
                      'none' => {
                                  'name' => 'GeForce GT 750M',
                                  'type' => 'legacy'
                                }
                    },
          '0FEA' => {
                      'none' => {
                                  'name' => 'GeForce GT 755M',
                                  'type' => 'legacy'
                                }
                    },
          '0FEC' => {
                      'none' => {
                                  'name' => 'GeForce 710A',
                                  'type' => 'legacy'
                                }
                    },
          '0FED' => {
                      'none' => {
                                  'name' => 'GeForce 820M',
                                  'type' => 'legacy'
                                }
                    },
          '0FEE' => {
                      'none' => {
                                  'name' => 'GeForce 810M',
                                  'type' => 'legacy'
                                }
                    },
          '0FEF' => {
                      'none' => {
                                  'name' => 'GRID K340',
                                  'type' => 'legacy'
                                }
                    },
          '0FF2' => {
                      'none' => {
                                  'name' => 'GRID K1',
                                  'type' => 'legacy'
                                }
                    },
          '0FF6' => {
                      'none' => {
                                  'name' => 'Quadro K1100M',
                                  'type' => 'legacy'
                                }
                    },
          '0FF8' => {
                      'none' => {
                                  'name' => 'Quadro K500M',
                                  'type' => 'legacy'
                                }
                    },
          '0FF9' => {
                      'none' => {
                                  'name' => 'Quadro K2000D',
                                  'type' => 'legacy'
                                }
                    },
          '0FFA' => {
                      'none' => {
                                  'name' => 'Quadro K600',
                                  'type' => 'legacy'
                                }
                    },
          '0FFB' => {
                      'none' => {
                                  'name' => 'Quadro K2000M',
                                  'type' => 'legacy'
                                }
                    },
          '0FFC' => {
                      'none' => {
                                  'name' => 'Quadro K1000M',
                                  'type' => 'legacy'
                                }
                    },
          '0FFD' => {
                      'none' => {
                                  'name' => 'NVS 510',
                                  'type' => 'legacy'
                                }
                    },
          '0FFE' => {
                      'none' => {
                                  'name' => 'Quadro K2000',
                                  'type' => 'legacy'
                                }
                    },
          '0FFF' => {
                      'none' => {
                                  'name' => 'Quadro 410',
                                  'type' => 'legacy'
                                }
                    },
          '1001' => {
                      'none' => {
                                  'name' => 'GeForce GTX TITAN Z',
                                  'type' => 'legacy'
                                }
                    },
          '1004' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780',
                                  'type' => 'legacy'
                                }
                    },
          '1005' => {
                      'none' => {
                                  'name' => 'GeForce GTX TITAN',
                                  'type' => 'legacy'
                                }
                    },
          '1007' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780',
                                  'type' => 'legacy'
                                }
                    },
          '1008' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '100A' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '100C' => {
                      'none' => {
                                  'name' => 'GeForce GTX TITAN Black',
                                  'type' => 'legacy'
                                }
                    },
          '1021' => {
                      'none' => {
                                  'name' => 'Tesla K20Xm',
                                  'type' => 'legacy'
                                }
                    },
          '1022' => {
                      'none' => {
                                  'name' => 'Tesla K20c',
                                  'type' => 'legacy'
                                }
                    },
          '1023' => {
                      'none' => {
                                  'name' => 'Tesla K40m',
                                  'type' => 'legacy'
                                }
                    },
          '1024' => {
                      'none' => {
                                  'name' => 'Tesla K40c',
                                  'type' => 'legacy'
                                }
                    },
          '1026' => {
                      'none' => {
                                  'name' => 'Tesla K20s',
                                  'type' => 'legacy'
                                }
                    },
          '1027' => {
                      'none' => {
                                  'name' => 'Tesla K40st',
                                  'type' => 'legacy'
                                }
                    },
          '1028' => {
                      'none' => {
                                  'name' => 'Tesla K20m',
                                  'type' => 'legacy'
                                }
                    },
          '1029' => {
                      'none' => {
                                  'name' => 'Tesla K40s',
                                  'type' => 'legacy'
                                }
                    },
          '102A' => {
                      'none' => {
                                  'name' => 'Tesla K40t',
                                  'type' => 'legacy'
                                }
                    },
          '102D' => {
                      'none' => {
                                  'name' => 'Tesla K80',
                                  'type' => 'legacy'
                                }
                    },
          '103A' => {
                      'none' => {
                                  'name' => 'Quadro K6000',
                                  'type' => 'legacy'
                                }
                    },
          '103C' => {
                      'none' => {
                                  'name' => 'Quadro K5200',
                                  'type' => 'legacy'
                                }
                    },
          '1040' => {
                      'none' => {
                                  'name' => 'GeForce GT 520',
                                  'type' => 'legacy'
                                }
                    },
          '1042' => {
                      'none' => {
                                  'name' => 'GeForce 510',
                                  'type' => 'legacy'
                                }
                    },
          '1048' => {
                      'none' => {
                                  'name' => 'GeForce 605',
                                  'type' => 'legacy'
                                }
                    },
          '1049' => {
                      'none' => {
                                  'name' => 'GeForce GT 620',
                                  'type' => 'legacy'
                                }
                    },
          '104A' => {
                      'none' => {
                                  'name' => 'GeForce GT 610',
                                  'type' => 'legacy'
                                }
                    },
          '104B' => {
                      '1043844C' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      '1043846B' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      '1462B590' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      '174B0625' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      '174BA625' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 625 (OEM)',
                                  'type' => 'legacy'
                                }
                    },
          '104C' => {
                      'none' => {
                                  'name' => 'GeForce GT 705',
                                  'type' => 'legacy'
                                }
                    },
          '1050' => {
                      'none' => {
                                  'name' => 'GeForce GT 520M',
                                  'type' => 'legacy'
                                }
                    },
          '1051' => {
                      'none' => {
                                  'name' => 'GeForce GT 520MX',
                                  'type' => 'legacy'
                                }
                    },
          '1052' => {
                      'none' => {
                                  'name' => 'GeForce GT 520M',
                                  'type' => 'legacy'
                                }
                    },
          '1054' => {
                      'none' => {
                                  'name' => 'GeForce 410M',
                                  'type' => 'legacy'
                                }
                    },
          '1055' => {
                      'none' => {
                                  'name' => 'GeForce 410M',
                                  'type' => 'legacy'
                                }
                    },
          '1056' => {
                      'none' => {
                                  'name' => 'NVS 4200M',
                                  'type' => 'legacy'
                                }
                    },
          '1057' => {
                      'none' => {
                                  'name' => 'NVS 4200M',
                                  'type' => 'legacy'
                                }
                    },
          '1058' => {
                      '103C2AF1' => {
                                      'name' => 'GeForce 610',
                                      'type' => 'legacy'
                                    },
                      '17AA3682' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '17AA3692' => {
                                      'name' => 'GeForce 705A',
                                      'type' => 'legacy'
                                    },
                      '17AA3695' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '17AA36A8' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '17AA36AC' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '17AA36AD' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '705A3682' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '1059' => {
                      'none' => {
                                  'name' => 'GeForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '105A' => {
                      'none' => {
                                  'name' => 'GeForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '105B' => {
                      '103C2AFB' => {
                                      'name' => 'GeForce 705A',
                                      'type' => 'legacy'
                                    },
                      '17AA30B1' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '17AA30F3' => {
                                      'name' => 'GeForce 705A',
                                      'type' => 'legacy'
                                    },
                      '17AA36A1' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 705M',
                                  'type' => 'legacy'
                                }
                    },
          '107C' => {
                      'none' => {
                                  'name' => 'NVS 315',
                                  'type' => 'legacy'
                                }
                    },
          '107D' => {
                      'none' => {
                                  'name' => 'NVS 310',
                                  'type' => 'legacy'
                                }
                    },
          '1080' => {
                      'none' => {
                                  'name' => 'GeForce GTX 580',
                                  'type' => 'legacy'
                                }
                    },
          '1081' => {
                      'none' => {
                                  'name' => 'GeForce GTX 570',
                                  'type' => 'legacy'
                                }
                    },
          '1082' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1084' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560',
                                  'type' => 'legacy'
                                }
                    },
          '1086' => {
                      'none' => {
                                  'name' => 'GeForce GTX 570',
                                  'type' => 'legacy'
                                }
                    },
          '1087' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1088' => {
                      'none' => {
                                  'name' => 'GeForce GTX 590',
                                  'type' => 'legacy'
                                }
                    },
          '1089' => {
                      'none' => {
                                  'name' => 'GeForce GTX 580',
                                  'type' => 'legacy'
                                }
                    },
          '108B' => {
                      'none' => {
                                  'name' => 'GeForce GTX 580',
                                  'type' => 'legacy'
                                }
                    },
          '1091' => {
                      '10DE088E' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      '10DE0891' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      '10DE0974' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      '10DE098D' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla M2090',
                                  'type' => 'legacy'
                                }
                    },
          '1094' => {
                      'none' => {
                                  'name' => 'Tesla M2075',
                                  'type' => 'legacy'
                                }
                    },
          '1096' => {
                      '10DE0911' => {
                                      'name' => 'Tesla C2050',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla C2075',
                                  'type' => 'legacy'
                                }
                    },
          '109A' => {
                      'none' => {
                                  'name' => 'Quadro 5010M',
                                  'type' => 'legacy'
                                }
                    },
          '109B' => {
                      'none' => {
                                  'name' => 'Quadro 7000',
                                  'type' => 'legacy'
                                }
                    },
          '10C0' => {
                      'none' => {
                                  'name' => 'GeForce 9300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '10C3' => {
                      'none' => {
                                  'name' => 'GeForce 8400GS',
                                  'type' => 'legacy'
                                }
                    },
          '10C5' => {
                      'none' => {
                                  'name' => 'GeForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '10D8' => {
                      'none' => {
                                  'name' => 'NVS 300',
                                  'type' => 'legacy'
                                }
                    },
          '1140' => {
                      '10190799' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1019999F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250600' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250606' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025064A' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025064C' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025067A' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250680' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250686' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250689' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025068B' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025068D' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025068E' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250691' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250692' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250694' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250702' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250719' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250725' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250728' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025072B' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025072E' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250732' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250763' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250773' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250774' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250776' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025077A' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025077B' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025077C' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025077D' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025077E' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1025077F' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250781' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250798' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250799' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025079B' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025079C' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250807' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250821' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250823' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250830' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250833' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250837' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025083E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250841' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250853' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250854' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250855' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250856' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250857' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250858' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250863' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250868' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250869' => {
                                      'name' => 'GeForce 810M',
                                      'type' => 'legacy'
                                    },
                      '10250873' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250878' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025087B' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025087F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250881' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250885' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025088A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025089B' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250921' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025092E' => {
                                      'name' => 'GeForce 810M',
                                      'type' => 'legacy'
                                    },
                      '1025092F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250932' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025093A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025093C' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025093F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250941' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250945' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250954' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250965' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1028054D' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '1028054E' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '10280554' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10280557' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10280562' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '10280565' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '10280568' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '10280590' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '10280592' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '10280594' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '10280595' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '102805A2' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '102805B1' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '102805B3' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '102805DA' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '102805DE' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '102805E0' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '102805E8' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '102805F4' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1028060F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1028062F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1028064E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10280652' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10280653' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10280655' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1028065E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10280662' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1028068D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102806AD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102806AE' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102806AF' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102806B0' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102806C0' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102806C1' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C18EF' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '103C18F9' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '103C18FB' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '103C18FD' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '103C18FF' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '103C218A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C21BB' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C21BC' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C220E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2210' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2212' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2214' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2218' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C225B' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C225D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C226D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C226F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C22D2' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C22D9' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2335' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2337' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2AEF' => {
                                      'name' => 'GeForce GT 720A',
                                      'type' => 'legacy'
                                    },
                      '103C2AF9' => {
                                      'name' => 'GeForce 710A',
                                      'type' => 'legacy'
                                    },
                      '104310DD' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '104310ED' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '104311FD' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043124D' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043126D' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043131D' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104313FD' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104314C7' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10431507' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '104315AD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104315ED' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043160D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043163D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043165D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043166D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104316CD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104316DD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043170D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043176D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043178D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043179D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10432132' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10432136' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '104321BA' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104321FA' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043220A' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043221A' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043223A' => {
                                      'name' => 'GeForce GT 710M',
                                      'type' => 'legacy'
                                    },
                      '1043224A' => {
                                      'name' => 'GeForce GT 710M',
                                      'type' => 'legacy'
                                    },
                      '1043227A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043228A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104322FA' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043232A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043233A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043235A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043236A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043238A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438595' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104385EA' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104385EB' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104385EC' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104385EE' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104385F3' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043860E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043861A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043861B' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438628' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438643' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043864C' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438652' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438660' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438661' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '105B0DAC' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '105B0DAD' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '105B0EF3' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10CF17F5' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1179FA01' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA02' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA03' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA05' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA11' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA13' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA18' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA19' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA21' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA23' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA2A' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA32' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA33' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA36' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA38' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA42' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA43' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA45' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA47' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA49' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA58' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA59' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA88' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA89' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '144DB092' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '144DC0D5' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '144DC0D7' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '144DC0E2' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '144DC0E3' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '144DC0E4' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '144DC10D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '144DC652' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '144DC709' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '144DC711' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '144DC736' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '144DC737' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '144DC745' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '144DC750' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '146210B8' => {
                                      'name' => 'GeForce GT 710M',
                                      'type' => 'legacy'
                                    },
                      '146210E9' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '14621116' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1462AA33' => {
                                      'name' => 'GeForce 720M',
                                      'type' => 'legacy'
                                    },
                      '1462AAA2' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1462AAA3' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1462ACB2' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1462ACC1' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1462AE61' => {
                                      'name' => 'GeForce 720M',
                                      'type' => 'legacy'
                                    },
                      '1462AE65' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1462AE6A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1462AE71' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '14C00083' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '152D0926' => {
                                      'name' => 'GeForce 620M',
                                      'type' => 'legacy'
                                    },
                      '152D0982' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '152D0983' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '152D1005' => {
                                      'name' => 'GeForce GT 820M',
                                      'type' => 'legacy'
                                    },
                      '152D1012' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '152D1019' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '152D1030' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '152D1055' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '152D1067' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '152D1092' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA2200' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '17AA2213' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA2220' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA309C' => {
                                      'name' => 'GeForce GT 720A',
                                      'type' => 'legacy'
                                    },
                      '17AA30B4' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA30B7' => {
                                      'name' => 'GeForce 720A',
                                      'type' => 'legacy'
                                    },
                      '17AA30E4' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA361B' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA361C' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA361D' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA3656' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA365A' => {
                                      'name' => 'GeForce 705M',
                                      'type' => 'legacy'
                                    },
                      '17AA365E' => {
                                      'name' => 'GeForce 800M',
                                      'type' => 'legacy'
                                    },
                      '17AA3661' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA366C' => {
                                      'name' => 'GeForce 800M',
                                      'type' => 'legacy'
                                    },
                      '17AA3685' => {
                                      'name' => 'GeForce 800M',
                                      'type' => 'legacy'
                                    },
                      '17AA3686' => {
                                      'name' => 'GeForce 800M',
                                      'type' => 'legacy'
                                    },
                      '17AA3687' => {
                                      'name' => 'GeForce 705A',
                                      'type' => 'legacy'
                                    },
                      '17AA3696' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA369B' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA369C' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA369D' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA369E' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA36A6' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA36A7' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA36A9' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA36AF' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA36B0' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA36B6' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA3800' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3801' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3802' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3803' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3804' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3806' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3808' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA380D' => {
                                      'name' => 'GeForce GT 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA380E' => {
                                      'name' => 'GeForce GT 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA380F' => {
                                      'name' => 'GeForce GT 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3811' => {
                                      'name' => 'GeForce GT 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3812' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3813' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3816' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3817' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3818' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA381A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA381C' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA381D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3901' => {
                                      'name' => 'GeForce 610M',
                                      'type' => 'legacy'
                                    },
                      '17AA3902' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA3903' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA3904' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '17AA3905' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3907' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3910' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3912' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3913' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3915' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3983' => {
                                      'name' => 'GeForce 610M',
                                      'type' => 'legacy'
                                    },
                      '17AA5001' => {
                                      'name' => 'GeForce 610M',
                                      'type' => 'legacy'
                                    },
                      '17AA5003' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA5005' => {
                                      'name' => 'GeForce 705M',
                                      'type' => 'legacy'
                                    },
                      '17AA500D' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA5014' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA5017' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA5019' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA501A' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA501F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA5025' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA5027' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA502A' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA502B' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA502D' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA502E' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA502F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA5030' => {
                                      'name' => 'GeForce 705M',
                                      'type' => 'legacy'
                                    },
                      '17AA5031' => {
                                      'name' => 'GeForce 705M',
                                      'type' => 'legacy'
                                    },
                      '17AA5032' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA5033' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA503E' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA503F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA5040' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '18540177' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '18540180' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '18540190' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '18540192' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '18540224' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B0A01C0' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B0A20DD' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1B0A20DF' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1B0A210E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B0A2202' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1B0A90D7' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B0A90DD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B505530' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B6C5031' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1BAB0106' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1D051013' => {
                                      'name' => 'GeForce 810M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'legacy'
                                }
                    },
          '1180' => {
                      'none' => {
                                  'name' => 'GeForce GTX 680',
                                  'type' => 'legacy'
                                }
                    },
          '1183' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1184' => {
                      'none' => {
                                  'name' => 'GeForce GTX 770',
                                  'type' => 'legacy'
                                }
                    },
          '1185' => {
                      '10DE106F' => {
                                      'name' => 'GeForce GTX 760',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GTX 660',
                                  'type' => 'legacy'
                                }
                    },
          '1187' => {
                      'none' => {
                                  'name' => 'GeForce GTX 760',
                                  'type' => 'legacy'
                                }
                    },
          '1188' => {
                      'none' => {
                                  'name' => 'GeForce GTX 690',
                                  'type' => 'legacy'
                                }
                    },
          '1189' => {
                      '10DE1074' => {
                                      'name' => 'GeForce GTX 760 Ti OEM',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GTX 670',
                                  'type' => 'legacy'
                                }
                    },
          '118A' => {
                      'none' => {
                                  'name' => 'GRID K520',
                                  'type' => 'legacy'
                                }
                    },
          '118E' => {
                      'none' => {
                                  'name' => 'GeForce GTX 760 (192-bit)',
                                  'type' => 'legacy'
                                }
                    },
          '118F' => {
                      'none' => {
                                  'name' => 'Tesla K10',
                                  'type' => 'legacy'
                                }
                    },
          '1193' => {
                      'none' => {
                                  'name' => 'GeForce GTX 760 Ti OEM',
                                  'type' => 'legacy'
                                }
                    },
          '1194' => {
                      'none' => {
                                  'name' => 'Tesla K8',
                                  'type' => 'legacy'
                                }
                    },
          '1195' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660',
                                  'type' => 'legacy'
                                }
                    },
          '1198' => {
                      'none' => {
                                  'name' => 'GeForce GTX 880M',
                                  'type' => 'legacy'
                                }
                    },
          '1199' => {
                      '1458D001' => {
                                      'name' => 'GeForce GTX 760',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GTX 870M',
                                  'type' => 'legacy'
                                }
                    },
          '119A' => {
                      'none' => {
                                  'name' => 'GeForce GTX 860M',
                                  'type' => 'legacy'
                                }
                    },
          '119D' => {
                      'none' => {
                                  'name' => 'GeForce GTX 775M',
                                  'type' => 'legacy'
                                }
                    },
          '119E' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780M',
                                  'type' => 'legacy'
                                }
                    },
          '119F' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780M',
                                  'type' => 'legacy'
                                }
                    },
          '11A0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 680M',
                                  'type' => 'legacy'
                                }
                    },
          '11A1' => {
                      'none' => {
                                  'name' => 'GeForce GTX 670MX',
                                  'type' => 'legacy'
                                }
                    },
          '11A2' => {
                      'none' => {
                                  'name' => 'GeForce GTX 675MX',
                                  'type' => 'legacy'
                                }
                    },
          '11A3' => {
                      'none' => {
                                  'name' => 'GeForce GTX 680MX',
                                  'type' => 'legacy'
                                }
                    },
          '11A7' => {
                      'none' => {
                                  'name' => 'GeForce GTX 675MX',
                                  'type' => 'legacy'
                                }
                    },
          '11B4' => {
                      'none' => {
                                  'name' => 'Quadro K4200',
                                  'type' => 'legacy'
                                }
                    },
          '11B6' => {
                      'none' => {
                                  'name' => 'Quadro K3100M',
                                  'type' => 'legacy'
                                }
                    },
          '11B7' => {
                      'none' => {
                                  'name' => 'Quadro K4100M',
                                  'type' => 'legacy'
                                }
                    },
          '11B8' => {
                      'none' => {
                                  'name' => 'Quadro K5100M',
                                  'type' => 'legacy'
                                }
                    },
          '11BA' => {
                      'none' => {
                                  'name' => 'Quadro K5000',
                                  'type' => 'legacy'
                                }
                    },
          '11BC' => {
                      'none' => {
                                  'name' => 'Quadro K5000M',
                                  'type' => 'legacy'
                                }
                    },
          '11BD' => {
                      'none' => {
                                  'name' => 'Quadro K4000M',
                                  'type' => 'legacy'
                                }
                    },
          '11BE' => {
                      'none' => {
                                  'name' => 'Quadro K3000M',
                                  'type' => 'legacy'
                                }
                    },
          '11BF' => {
                      'none' => {
                                  'name' => 'GRID K2',
                                  'type' => 'legacy'
                                }
                    },
          '11C0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660',
                                  'type' => 'legacy'
                                }
                    },
          '11C2' => {
                      'none' => {
                                  'name' => 'GeForce GTX 650 Ti BOOST',
                                  'type' => 'legacy'
                                }
                    },
          '11C3' => {
                      'none' => {
                                  'name' => 'GeForce GTX 650 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '11C4' => {
                      'none' => {
                                  'name' => 'GeForce GTX 645',
                                  'type' => 'legacy'
                                }
                    },
          '11C5' => {
                      'none' => {
                                  'name' => 'GeForce GT 740',
                                  'type' => 'legacy'
                                }
                    },
          '11C6' => {
                      'none' => {
                                  'name' => 'GeForce GTX 650 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '11C8' => {
                      'none' => {
                                  'name' => 'GeForce GTX 650',
                                  'type' => 'legacy'
                                }
                    },
          '11CB' => {
                      'none' => {
                                  'name' => 'GeForce GT 740',
                                  'type' => 'legacy'
                                }
                    },
          '11E0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 770M',
                                  'type' => 'legacy'
                                }
                    },
          '11E1' => {
                      'none' => {
                                  'name' => 'GeForce GTX 765M',
                                  'type' => 'legacy'
                                }
                    },
          '11E2' => {
                      'none' => {
                                  'name' => 'GeForce GTX 765M',
                                  'type' => 'legacy'
                                }
                    },
          '11E3' => {
                      '17AA3683' => {
                                      'name' => 'GeForce GTX 760A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GTX 760M',
                                  'type' => 'legacy'
                                }
                    },
          '11FA' => {
                      'none' => {
                                  'name' => 'Quadro K4000',
                                  'type' => 'legacy'
                                }
                    },
          '11FC' => {
                      'none' => {
                                  'name' => 'Quadro K2100M',
                                  'type' => 'legacy'
                                }
                    },
          '1200' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1201' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560',
                                  'type' => 'legacy'
                                }
                    },
          '1203' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460 SE v2',
                                  'type' => 'legacy'
                                }
                    },
          '1205' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460 v2',
                                  'type' => 'legacy'
                                }
                    },
          '1206' => {
                      'none' => {
                                  'name' => 'GeForce GTX 555',
                                  'type' => 'legacy'
                                }
                    },
          '1207' => {
                      'none' => {
                                  'name' => 'GeForce GT 645',
                                  'type' => 'legacy'
                                }
                    },
          '1208' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 SE',
                                  'type' => 'legacy'
                                }
                    },
          '1210' => {
                      'none' => {
                                  'name' => 'GeForce GTX 570M',
                                  'type' => 'legacy'
                                }
                    },
          '1211' => {
                      'none' => {
                                  'name' => 'GeForce GTX 580M',
                                  'type' => 'legacy'
                                }
                    },
          '1212' => {
                      'none' => {
                                  'name' => 'GeForce GTX 675M',
                                  'type' => 'legacy'
                                }
                    },
          '1213' => {
                      'none' => {
                                  'name' => 'GeForce GTX 670M',
                                  'type' => 'legacy'
                                }
                    },
          '1241' => {
                      'none' => {
                                  'name' => 'GeForce GT 545',
                                  'type' => 'legacy'
                                }
                    },
          '1243' => {
                      'none' => {
                                  'name' => 'GeForce GT 545',
                                  'type' => 'legacy'
                                }
                    },
          '1244' => {
                      'none' => {
                                  'name' => 'GeForce GTX 550 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1245' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '1246' => {
                      'none' => {
                                  'name' => 'GeForce GT 550M',
                                  'type' => 'legacy'
                                }
                    },
          '1247' => {
                      '1043212A' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    },
                      '1043212B' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    },
                      '1043212C' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '1248' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '1249' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '124B' => {
                      'none' => {
                                  'name' => 'GeForce GT 640',
                                  'type' => 'legacy'
                                }
                    },
          '124D' => {
                      '146210CC' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '1251' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560M',
                                  'type' => 'legacy'
                                }
                    },
          '1280' => {
                      'none' => {
                                  'name' => 'GeForce GT 635',
                                  'type' => 'legacy'
                                }
                    },
          '1281' => {
                      'none' => {
                                  'name' => 'GeForce GT 710',
                                  'type' => 'legacy'
                                }
                    },
          '1282' => {
                      'none' => {
                                  'name' => 'GeForce GT 640',
                                  'type' => 'legacy'
                                }
                    },
          '1284' => {
                      'none' => {
                                  'name' => 'GeForce GT 630',
                                  'type' => 'legacy'
                                }
                    },
          '1286' => {
                      'none' => {
                                  'name' => 'GeForce GT 720',
                                  'type' => 'legacy'
                                }
                    },
          '1287' => {
                      'none' => {
                                  'name' => 'GeForce GT 730',
                                  'type' => 'legacy'
                                }
                    },
          '1288' => {
                      'none' => {
                                  'name' => 'GeForce GT 720',
                                  'type' => 'legacy'
                                }
                    },
          '1289' => {
                      'none' => {
                                  'name' => 'GeForce GT 710',
                                  'type' => 'legacy'
                                }
                    },
          '128B' => {
                      'none' => {
                                  'name' => 'GeForce GT 710',
                                  'type' => 'legacy'
                                }
                    },
          '1290' => {
                      '103C2AFA' => {
                                      'name' => 'GeForce GT 730A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 730M',
                                  'type' => 'legacy'
                                }
                    },
          '1291' => {
                      'none' => {
                                  'name' => 'GeForce GT 735M',
                                  'type' => 'legacy'
                                }
                    },
          '1292' => {
                      '17AA3675' => {
                                      'name' => 'GeForce GT 740A',
                                      'type' => 'legacy'
                                    },
                      '17AA367C' => {
                                      'name' => 'GeForce GT 740A',
                                      'type' => 'legacy'
                                    },
                      '17AA3684' => {
                                      'name' => 'GeForce GT 740A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 740M',
                                  'type' => 'legacy'
                                }
                    },
          '1293' => {
                      'none' => {
                                  'name' => 'GeForce GT 730M',
                                  'type' => 'legacy'
                                }
                    },
          '1295' => {
                      '103C2B0D' => {
                                      'name' => 'GeForce 710A',
                                      'type' => 'legacy'
                                    },
                      '103C2B0F' => {
                                      'name' => 'GeForce 710A',
                                      'type' => 'legacy'
                                    },
                      '103C2B20' => {
                                      'name' => 'GeForce 810A',
                                      'type' => 'legacy'
                                    },
                      '103C2B21' => {
                                      'name' => 'GeForce 810A',
                                      'type' => 'legacy'
                                    },
                      '17AA367A' => {
                                      'name' => 'GeForce 805A',
                                      'type' => 'legacy'
                                    },
                      '17AA367C' => {
                                      'name' => 'GeForce 710A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 710M',
                                  'type' => 'legacy'
                                }
                    },
          '1296' => {
                      'none' => {
                                  'name' => 'GeForce 825M',
                                  'type' => 'legacy'
                                }
                    },
          '1298' => {
                      'none' => {
                                  'name' => 'GeForce GT 720M',
                                  'type' => 'legacy'
                                }
                    },
          '1299' => {
                      '17AA30BB' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DA' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DC' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DD' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DF' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA3117' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA361B' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA362D' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA362E' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA3630' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA3637' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA369B' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA36A7' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA36AF' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA36F0' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '1B0A01C6' => {
                                      'name' => 'GeForce GT 730',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 920M',
                                  'type' => 'legacy'
                                }
                    },
          '129A' => {
                      'none' => {
                                  'name' => 'GeForce 910M',
                                  'type' => 'legacy'
                                }
                    },
          '12B9' => {
                      'none' => {
                                  'name' => 'Quadro K610M',
                                  'type' => 'legacy'
                                }
                    },
          '12BA' => {
                      'none' => {
                                  'name' => 'Quadro K510M',
                                  'type' => 'legacy'
                                }
                    },
          '1340' => {
                      '103C2B2B' => {
                                      'name' => 'NVIDIA GeForce 830A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 830M',
                                  'type' => 'closed'
                                }
                    },
          '1341' => {
                      '17AA3697' => {
                                      'name' => 'NVIDIA GeForce 840A',
                                      'type' => 'closed'
                                    },
                      '17AA3699' => {
                                      'name' => 'NVIDIA GeForce 840A',
                                      'type' => 'closed'
                                    },
                      '17AA369C' => {
                                      'name' => 'NVIDIA GeForce 840A',
                                      'type' => 'closed'
                                    },
                      '17AA36AF' => {
                                      'name' => 'NVIDIA GeForce 840A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 840M',
                                  'type' => 'closed'
                                }
                    },
          '1344' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 845M',
                                  'type' => 'closed'
                                }
                    },
          '1346' => {
                      '17AA30BA' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA362C' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA362F' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA3636' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 930M',
                                  'type' => 'closed'
                                }
                    },
          '1347' => {
                      '17AA36B9' => {
                                      'name' => 'NVIDIA GeForce 940A',
                                      'type' => 'closed'
                                    },
                      '17AA36BA' => {
                                      'name' => 'NVIDIA GeForce 940A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940M',
                                  'type' => 'closed'
                                }
                    },
          '1348' => {
                      '103C2B5C' => {
                                      'name' => 'NVIDIA GeForce 945A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 945M',
                                  'type' => 'closed'
                                }
                    },
          '1349' => {
                      '17AA3124' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA364B' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA36C3' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA36D1' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA36D8' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 930M',
                                  'type' => 'closed'
                                }
                    },
          '134B' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940MX',
                                  'type' => 'closed'
                                }
                    },
          '134D' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940MX',
                                  'type' => 'closed'
                                }
                    },
          '134E' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 930MX',
                                  'type' => 'closed'
                                }
                    },
          '134F' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 920MX',
                                  'type' => 'closed'
                                }
                    },
          '137A' => {
                      '17AA2225' => {
                                      'name' => 'Quadro K620M',
                                      'type' => 'closed'
                                    },
                      '17AA2232' => {
                                      'name' => 'Quadro M500M',
                                      'type' => 'closed'
                                    },
                      '17AA505A' => {
                                      'name' => 'Quadro M500M',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'closed'
                                }
                    },
          '137B' => {
                      'none' => {
                                  'name' => 'Quadro M520',
                                  'type' => 'closed'
                                }
                    },
          '1380' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 750 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1381' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 750',
                                  'type' => 'closed'
                                }
                    },
          '1382' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 745',
                                  'type' => 'closed'
                                }
                    },
          '1390' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 845M',
                                  'type' => 'closed'
                                }
                    },
          '1391' => {
                      '17AA3697' => {
                                      'name' => 'NVIDIA GeForce GTX 850A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 850M',
                                  'type' => 'closed'
                                }
                    },
          '1392' => {
                      '1028066A' => {
                                      'name' => 'NVIDIA GeForce GPU',
                                      'type' => 'closed'
                                    },
                      '1043861E' => {
                                      'name' => 'NVIDIA GeForce GTX 750 Ti',
                                      'type' => 'closed'
                                    },
                      '104386D9' => {
                                      'name' => 'NVIDIA GeForce GTX 750 Ti',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 860M',
                                  'type' => 'closed'
                                }
                    },
          '1393' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 840M',
                                  'type' => 'closed'
                                }
                    },
          '1398' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 845M',
                                  'type' => 'closed'
                                }
                    },
          '1399' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 945M',
                                  'type' => 'closed'
                                }
                    },
          '139A' => {
                      '17AA362C' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      '17AA362F' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      '17AA363F' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      '17AA3640' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      '17AA3647' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      '17AA36B9' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 950M',
                                  'type' => 'closed'
                                }
                    },
          '139B' => {
                      '1025107A' => {
                                      'name' => 'NVIDIA GeForce GTX 750 Ti',
                                      'type' => 'closed'
                                    },
                      '102806A3' => {
                                      'name' => 'NVIDIA GeForce GTX 860M',
                                      'type' => 'closed'
                                    },
                      '103C2B4C' => {
                                      'name' => 'NVIDIA GeForce GTX 960A',
                                      'type' => 'closed'
                                    },
                      '17AA3649' => {
                                      'name' => 'NVIDIA GeForce GTX 750Ti',
                                      'type' => 'closed'
                                    },
                      '17AA36BF' => {
                                      'name' => 'NVIDIA GeForce GTX 960A',
                                      'type' => 'closed'
                                    },
                      '19DAC248' => {
                                      'name' => 'NVIDIA GeForce GTX 750 Ti',
                                      'type' => 'closed'
                                    },
                      '1AFA8A75' => {
                                      'name' => 'NVIDIA GeForce GTX 750Ti',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 960M',
                                  'type' => 'closed'
                                }
                    },
          '139C' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940M',
                                  'type' => 'closed'
                                }
                    },
          '139D' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 750 Ti',
                                  'type' => 'closed'
                                }
                    },
          '13B0' => {
                      'none' => {
                                  'name' => 'Quadro M2000M',
                                  'type' => 'closed'
                                }
                    },
          '13B1' => {
                      'none' => {
                                  'name' => 'Quadro M1000M',
                                  'type' => 'closed'
                                }
                    },
          '13B2' => {
                      'none' => {
                                  'name' => 'Quadro M600M',
                                  'type' => 'closed'
                                }
                    },
          '13B3' => {
                      'none' => {
                                  'name' => 'Quadro K2200M',
                                  'type' => 'closed'
                                }
                    },
          '13B4' => {
                      'none' => {
                                  'name' => 'Quadro M620',
                                  'type' => 'closed'
                                }
                    },
          '13B6' => {
                      'none' => {
                                  'name' => 'Quadro M1200',
                                  'type' => 'closed'
                                }
                    },
          '13B9' => {
                      'none' => {
                                  'name' => 'NVS 810',
                                  'type' => 'closed'
                                }
                    },
          '13BA' => {
                      'none' => {
                                  'name' => 'Quadro K2200',
                                  'type' => 'closed'
                                }
                    },
          '13BB' => {
                      'none' => {
                                  'name' => 'Quadro K620',
                                  'type' => 'closed'
                                }
                    },
          '13BC' => {
                      'none' => {
                                  'name' => 'Quadro K1200',
                                  'type' => 'closed'
                                }
                    },
          '13C0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980',
                                  'type' => 'closed'
                                }
                    },
          '13C2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 970',
                                  'type' => 'closed'
                                }
                    },
          '13D7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980M',
                                  'type' => 'closed'
                                }
                    },
          '13D8' => {
                      '14621198' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      '14621199' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      '19DAB282' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      '19DAB284' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      '19DAB286' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 970M',
                                  'type' => 'closed'
                                }
                    },
          '13D9' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 965M',
                                  'type' => 'closed'
                                }
                    },
          '13DA' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980',
                                  'type' => 'closed'
                                }
                    },
          '13F0' => {
                      'none' => {
                                  'name' => 'Quadro M5000',
                                  'type' => 'closed'
                                }
                    },
          '13F1' => {
                      'none' => {
                                  'name' => 'Quadro M4000',
                                  'type' => 'closed'
                                }
                    },
          '13F2' => {
                      'none' => {
                                  'name' => 'Tesla M60',
                                  'type' => 'closed'
                                }
                    },
          '13F3' => {
                      'none' => {
                                  'name' => 'Tesla M6',
                                  'type' => 'closed'
                                }
                    },
          '13F8' => {
                      '10DE11DD' => {
                                      'name' => 'Quadro M5000 SE',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro M5000M',
                                  'type' => 'closed'
                                }
                    },
          '13F9' => {
                      'none' => {
                                  'name' => 'Quadro M4000M',
                                  'type' => 'closed'
                                }
                    },
          '13FA' => {
                      '10DE11C9' => {
                                      'name' => 'Quadro M3000 SE',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro M3000M',
                                  'type' => 'closed'
                                }
                    },
          '13FB' => {
                      'none' => {
                                  'name' => 'Quadro M5500',
                                  'type' => 'closed'
                                }
                    },
          '1401' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 960',
                                  'type' => 'closed'
                                }
                    },
          '1402' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 950',
                                  'type' => 'closed'
                                }
                    },
          '1406' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 960',
                                  'type' => 'closed'
                                }
                    },
          '1407' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 750',
                                  'type' => 'closed'
                                }
                    },
          '1427' => {
                      '1458D003' => {
                                      'name' => 'NVIDIA GeForce GTX 950',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 965M',
                                  'type' => 'closed'
                                }
                    },
          '1430' => {
                      'none' => {
                                  'name' => 'Quadro M2000',
                                  'type' => 'closed'
                                }
                    },
          '1431' => {
                      'none' => {
                                  'name' => 'Tesla M4',
                                  'type' => 'closed'
                                }
                    },
          '1436' => {
                      'none' => {
                                  'name' => 'Quadro M2200',
                                  'type' => 'closed'
                                }
                    },
          '15F0' => {
                      'none' => {
                                  'name' => 'Quadro GP100',
                                  'type' => 'closed'
                                }
                    },
          '15F7' => {
                      'none' => {
                                  'name' => 'Tesla P100-PCIE-12GB',
                                  'type' => 'closed'
                                }
                    },
          '15F8' => {
                      'none' => {
                                  'name' => 'Tesla P100-PCIE-16GB',
                                  'type' => 'closed'
                                }
                    },
          '15F9' => {
                      'none' => {
                                  'name' => 'Tesla P100-SXM2-16GB',
                                  'type' => 'closed'
                                }
                    },
          '1617' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980M',
                                  'type' => 'closed'
                                }
                    },
          '1618' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 970M',
                                  'type' => 'closed'
                                }
                    },
          '1619' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 965M',
                                  'type' => 'closed'
                                }
                    },
          '161A' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980',
                                  'type' => 'closed'
                                }
                    },
          '1667' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 965M',
                                  'type' => 'closed'
                                }
                    },
          '174D' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX130',
                                  'type' => 'closed'
                                }
                    },
          '174E' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX110',
                                  'type' => 'closed'
                                }
                    },
          '179C' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940MX',
                                  'type' => 'closed'
                                }
                    },
          '17C2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX TITAN X',
                                  'type' => 'closed'
                                }
                    },
          '17C8' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980 Ti',
                                  'type' => 'closed'
                                }
                    },
          '17F0' => {
                      'none' => {
                                  'name' => 'Quadro M6000',
                                  'type' => 'closed'
                                }
                    },
          '17F1' => {
                      'none' => {
                                  'name' => 'Quadro M6000 24GB',
                                  'type' => 'closed'
                                }
                    },
          '17FD' => {
                      '10DE1173' => {
                                      'name' => 'Tesla M40 24GB',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Tesla M40',
                                  'type' => 'closed'
                                }
                    },
          '1B00' => {
                      'none' => {
                                  'name' => 'NVIDIA TITAN X (Pascal)',
                                  'type' => 'closed'
                                }
                    },
          '1B02' => {
                      '10DE123E' => {
                                      'name' => 'NVIDIA TITAN Xp COLLECTORS EDITION',
                                      'type' => 'closed'
                                    },
                      '10DE123F' => {
                                      'name' => 'NVIDIA TITAN Xp COLLECTORS EDITION',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA TITAN Xp',
                                  'type' => 'closed'
                                }
                    },
          '1B06' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1080 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1B30' => {
                      'none' => {
                                  'name' => 'Quadro P6000',
                                  'type' => 'closed'
                                }
                    },
          '1B38' => {
                      'none' => {
                                  'name' => 'Tesla P40',
                                  'type' => 'closed'
                                }
                    },
          '1B80' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1080',
                                  'type' => 'closed'
                                }
                    },
          '1B81' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070',
                                  'type' => 'closed'
                                }
                    },
          '1B82' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1B83' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 6GB',
                                  'type' => 'closed'
                                }
                    },
          '1B84' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 3GB',
                                  'type' => 'closed'
                                }
                    },
          '1B87' => {
                      'none' => {
                                  'name' => 'NVIDIA P104-100',
                                  'type' => 'closed'
                                }
                    },
          '1BA0' => {
                      '10280887' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1080',
                                  'type' => 'closed'
                                }
                    },
          '1BA1' => {
                      '102808A1' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '102808A2' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431CCE' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14581651' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14581653' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '146211E8' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '146211E9' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621225' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621226' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621227' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '15589501' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '155895E1' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1A582000' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1D051032' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070',
                                  'type' => 'closed'
                                }
                    },
          '1BA2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070',
                                  'type' => 'closed'
                                }
                    },
          '1BB0' => {
                      'none' => {
                                  'name' => 'Quadro P5000',
                                  'type' => 'closed'
                                }
                    },
          '1BB1' => {
                      'none' => {
                                  'name' => 'Quadro P4000',
                                  'type' => 'closed'
                                }
                    },
          '1BB4' => {
                      'none' => {
                                  'name' => 'Tesla P6',
                                  'type' => 'closed'
                                }
                    },
          '1BB5' => {
                      '17AA2268' => {
                                      'name' => 'Quadro P5200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2269' => {
                                      'name' => 'Quadro P5200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P5200',
                                  'type' => 'closed'
                                }
                    },
          '1BB6' => {
                      'none' => {
                                  'name' => 'Quadro P5000',
                                  'type' => 'closed'
                                }
                    },
          '1BB7' => {
                      '146211E9' => {
                                      'name' => 'Quadro P4000 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '15589501' => {
                                      'name' => 'Quadro P4000 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P4000',
                                  'type' => 'closed'
                                }
                    },
          '1BB8' => {
                      'none' => {
                                  'name' => 'Quadro P3000',
                                  'type' => 'closed'
                                }
                    },
          '1BB9' => {
                      '155895E1' => {
                                      'name' => 'Quadro P4200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2268' => {
                                      'name' => 'Quadro P4200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2269' => {
                                      'name' => 'Quadro P4200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P4200',
                                  'type' => 'closed'
                                }
                    },
          '1BBB' => {
                      '17AA225F' => {
                                      'name' => 'Quadro P3200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2262' => {
                                      'name' => 'Quadro P3200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P3200',
                                  'type' => 'closed'
                                }
                    },
          '1BC7' => {
                      'none' => {
                                  'name' => 'NVIDIA P104-101',
                                  'type' => 'closed'
                                }
                    },
          '1BE0' => {
                      '10251221' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1025123E' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '102807C0' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280876' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1028088B' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431031' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431BF0' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1458355B' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1080',
                                  'type' => 'closed'
                                }
                    },
          '1BE1' => {
                      '103C84DB' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '104316F0' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '38422009' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070',
                                  'type' => 'closed'
                                }
                    },
          '1C02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 3GB',
                                  'type' => 'closed'
                                }
                    },
          '1C03' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 6GB',
                                  'type' => 'closed'
                                }
                    },
          '1C04' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 5GB',
                                  'type' => 'closed'
                                }
                    },
          '1C06' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 6GB',
                                  'type' => 'closed'
                                }
                    },
          '1C07' => {
                      'none' => {
                                  'name' => 'NVIDIA P106-100',
                                  'type' => 'closed'
                                }
                    },
          '1C09' => {
                      'none' => {
                                  'name' => 'NVIDIA P106-090',
                                  'type' => 'closed'
                                }
                    },
          '1C20' => {
                      '10280802' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280803' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280825' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280827' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280885' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280886' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8467' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8478' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8581' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621244' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '155895E5' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA39B9' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1A582000' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1A582001' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1D051059' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060',
                                  'type' => 'closed'
                                }
                    },
          '1C21' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1C22' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C23' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060',
                                  'type' => 'closed'
                                }
                    },
          '1C30' => {
                      'none' => {
                                  'name' => 'Quadro P2000',
                                  'type' => 'closed'
                                }
                    },
          '1C31' => {
                      'none' => {
                                  'name' => 'Quadro P2200',
                                  'type' => 'closed'
                                }
                    },
          '1C60' => {
                      '103C8390' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8467' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060',
                                  'type' => 'closed'
                                }
                    },
          '1C61' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1C62' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C81' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C82' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1C83' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C8C' => {
                      '1028087C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8519' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C856A' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1462123C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1462126C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2266' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2267' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA39FF' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1C8D' => {
                      '103C84E9' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C84EB' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C856A' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1043114F' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431341' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431351' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431481' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '104314A1' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '104318C1' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431B5E' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1462126C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '152D1217' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1D721707' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C8F' => {
                      '1462123C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1462126C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1462126D' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621284' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621297' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1C90' => {
                      '102809C1' => {
                                      'name' => 'NVIDIA GeForce MX250',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX150',
                                  'type' => 'closed'
                                }
                    },
          '1C91' => {
                      '103C856A' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C86E3' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '152D1232' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C92' => {
                      '1043149F' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431B31' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621245' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1462126C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1C94' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX350',
                                  'type' => 'closed'
                                }
                    },
          '1C96' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX350',
                                  'type' => 'closed'
                                }
                    },
          '1CB1' => {
                      'none' => {
                                  'name' => 'Quadro P1000',
                                  'type' => 'closed'
                                }
                    },
          '1CB2' => {
                      'none' => {
                                  'name' => 'Quadro P600',
                                  'type' => 'closed'
                                }
                    },
          '1CB3' => {
                      'none' => {
                                  'name' => 'Quadro P400',
                                  'type' => 'closed'
                                }
                    },
          '1CB6' => {
                      'none' => {
                                  'name' => 'Quadro P620',
                                  'type' => 'closed'
                                }
                    },
          '1CBA' => {
                      '17AA2266' => {
                                      'name' => 'Quadro P2000 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2267' => {
                                      'name' => 'Quadro P2000 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P2000',
                                  'type' => 'closed'
                                }
                    },
          '1CBB' => {
                      'none' => {
                                  'name' => 'Quadro P1000',
                                  'type' => 'closed'
                                }
                    },
          '1CBC' => {
                      'none' => {
                                  'name' => 'Quadro P600',
                                  'type' => 'closed'
                                }
                    },
          '1CBD' => {
                      'none' => {
                                  'name' => 'Quadro P620',
                                  'type' => 'closed'
                                }
                    },
          '1CFA' => {
                      'none' => {
                                  'name' => 'Quadro P2000',
                                  'type' => 'closed'
                                }
                    },
          '1CFB' => {
                      '102B2600' => {
                                      'name' => 'Matrox D-Series D1480',
                                      'type' => 'closed'
                                    },
                      '102B2700' => {
                                      'name' => 'Matrox D-Series D1450',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P1000',
                                  'type' => 'closed'
                                }
                    },
          '1D01' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GT 1030',
                                  'type' => 'closed'
                                }
                    },
          '1D02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GT 1010',
                                  'type' => 'closed'
                                }
                    },
          '1D10' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX150',
                                  'type' => 'closed'
                                }
                    },
          '1D11' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX230',
                                  'type' => 'closed'
                                }
                    },
          '1D12' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX150',
                                  'type' => 'closed'
                                }
                    },
          '1D13' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX250',
                                  'type' => 'closed'
                                }
                    },
          '1D16' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX330',
                                  'type' => 'closed'
                                }
                    },
          '1D33' => {
                      'none' => {
                                  'name' => 'Quadro P500',
                                  'type' => 'closed'
                                }
                    },
          '1D34' => {
                      'none' => {
                                  'name' => 'Quadro P520',
                                  'type' => 'closed'
                                }
                    },
          '1D52' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX250',
                                  'type' => 'closed'
                                }
                    },
          '1D81' => {
                      'none' => {
                                  'name' => 'NVIDIA TITAN V',
                                  'type' => 'closed'
                                }
                    },
          '1DB1' => {
                      '10DE1307' => {
                                      'name' => 'Tesla V100-SXM2-16GB-LS',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Tesla V100-SXM2-16GB',
                                  'type' => 'closed'
                                }
                    },
          '1DB3' => {
                      'none' => {
                                  'name' => 'Tesla V100-FHHL-16GB',
                                  'type' => 'closed'
                                }
                    },
          '1DB4' => {
                      '10DE1306' => {
                                      'name' => 'Tesla V100-PCIE-16GB-LS',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Tesla V100-PCIE-16GB',
                                  'type' => 'closed'
                                }
                    },
          '1DB5' => {
                      '10DE1308' => {
                                      'name' => 'Tesla V100-SXM2-32GB-LS',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Tesla V100-SXM2-32GB',
                                  'type' => 'closed'
                                }
                    },
          '1DB6' => {
                      'none' => {
                                  'name' => 'Tesla V100-PCIE-32GB',
                                  'type' => 'closed'
                                }
                    },
          '1DB7' => {
                      'none' => {
                                  'name' => 'Tesla V100-DGXS-32GB',
                                  'type' => 'closed'
                                }
                    },
          '1DB8' => {
                      '10DE131D' => {
                                      'name' => 'Tesla V100-SXM3-32GB-H',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Tesla V100-SXM3-32GB',
                                  'type' => 'closed'
                                }
                    },
          '1DBA' => {
                      '10DE12EB' => {
                                      'name' => 'NVIDIA TITAN V JHH Special Edition',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro GV100',
                                  'type' => 'closed'
                                }
                    },
          '1DF0' => {
                      'none' => {
                                  'name' => 'Tesla PG500-216',
                                  'type' => 'closed'
                                }
                    },
          '1DF2' => {
                      'none' => {
                                  'name' => 'Tesla PG503-216',
                                  'type' => 'closed'
                                }
                    },
          '1DF6' => {
                      'none' => {
                                  'name' => 'Tesla V100S-PCIE-32GB',
                                  'type' => 'closed'
                                }
                    },
          '1E02' => {
                      'none' => {
                                  'name' => 'NVIDIA TITAN RTX',
                                  'type' => 'open'
                                }
                    },
          '1E04' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 Ti',
                                  'type' => 'open'
                                }
                    },
          '1E07' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 Ti',
                                  'type' => 'open'
                                }
                    },
          '1E09' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 50HX',
                                  'type' => 'open'
                                }
                    },
          '1E30' => {
                      '1028129E' => {
                                      'name' => 'Quadro RTX 8000',
                                      'type' => 'open'
                                    },
                      '103C129E' => {
                                      'name' => 'Quadro RTX 8000',
                                      'type' => 'open'
                                    },
                      '10DE129E' => {
                                      'name' => 'Quadro RTX 8000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro RTX 6000',
                                  'type' => 'open'
                                }
                    },
          '1E36' => {
                      'none' => {
                                  'name' => 'Quadro RTX 6000',
                                  'type' => 'open'
                                }
                    },
          '1E78' => {
                      '10DE13D8' => {
                                      'name' => 'Quadro RTX 8000',
                                      'type' => 'open'
                                    },
                      '10DE13D9' => {
                                      'name' => 'Quadro RTX 6000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1E81' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1E82' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080',
                                  'type' => 'open'
                                }
                    },
          '1E84' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1E87' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080',
                                  'type' => 'open'
                                }
                    },
          '1E89' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1E90' => {
                      '10251375' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808A1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808A2' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EA' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EB' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EC' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028093B' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028093C' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8573' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8602' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8606' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043131F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043137F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043141F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431751' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581660' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581661' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581662' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621277' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '152D1220' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155895E1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155897E1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582002' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582005' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582007' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583000' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583001' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D051069' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080',
                                  'type' => 'open'
                                }
                    },
          '1E91' => {
                      '103C8607' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878B' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E61' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581511' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B4' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212AE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582009' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A58200A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583002' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '80863012' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 Super',
                                  'type' => 'open'
                                }
                    },
          '1E93' => {
                      '10251401' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025149C' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809D2' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8607' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B2' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212AE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B4' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155850D3' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155870D1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C3' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C5' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582009' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A58200A' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583002' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D051089' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 Super',
                                  'type' => 'open'
                                }
                    },
          '1EB0' => {
                      'none' => {
                                  'name' => 'Quadro RTX 5000',
                                  'type' => 'open'
                                }
                    },
          '1EB1' => {
                      'none' => {
                                  'name' => 'Quadro RTX 4000',
                                  'type' => 'open'
                                }
                    },
          '1EB5' => {
                      '10251375' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251401' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025149C' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809C3' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8785' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431DD1' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22B8' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22BA' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582005' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582007' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582008' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A58200A' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro RTX 5000',
                                  'type' => 'open'
                                }
                    },
          '1EB6' => {
                      '102809C3' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8785' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621277' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22B8' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22BA' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro RTX 4000',
                                  'type' => 'open'
                                }
                    },
          '1EB8' => {
                      '10DE12A2' => {
                                      'name' => 'Tesla T4',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1EC2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1EC7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1ED0' => {
                      '1025132D' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8573' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8600' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8605' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043138F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104315C1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FEE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FFE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080',
                                  'type' => 'open'
                                }
                    },
          '1ED1' => {
                      '10251432' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8746' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043165F' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '144DC192' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FD0' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 Super',
                                  'type' => 'open'
                                }
                    },
          '1ED3' => {
                      '10251432' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809D1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8746' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431D61' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E51' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431F01' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCF' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FD0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 Super',
                                  'type' => 'open'
                                }
                    },
          '1EF5' => {
                      'none' => {
                                  'name' => 'Quadro RTX 5000',
                                  'type' => 'open'
                                }
                    },
          '1F02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '1F03' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F06' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1F07' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '1F08' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F0A' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1F0B' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 40HX',
                                  'type' => 'open'
                                }
                    },
          '1F10' => {
                      '1025132D' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251342' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808A1' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808A2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EA' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EB' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EC' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028093B' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028093C' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8573' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8602' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8606' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043132F' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043136F' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431881' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E6E' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581658' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581663' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581664' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875A4' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875A5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A4' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621277' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155895E1' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155897E1' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582002' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582005' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582007' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583000' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583001' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D05105E' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D051070' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D052087' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '80862087' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '1F11' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F12' => {
                      '1028098F' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8741' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8744' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878E' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C880E' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E11' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431F11' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212D9' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3801' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3802' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3803' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F14' => {
                      '10251401' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251432' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251442' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251446' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147D' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809E2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809F3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8607' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C7' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8746' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878B' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043174F' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581512' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B4' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A4' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B4' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212AE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155850D3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155870D1' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A58200C' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582011' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583002' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '1F15' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F36' => {
                      '10280990' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104313CF' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14140032' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro RTX 3000',
                                  'type' => 'open'
                                }
                    },
          '1F42' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1F47' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1F50' => {
                      '102808ED' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8573' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8574' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8600' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8605' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FEE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FFE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '1F51' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F54' => {
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FD0' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '1F55' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '1F76' => {
                      '102B2800' => {
                                      'name' => 'Matrox D-Series D2450',
                                      'type' => 'open'
                                    },
                      '102B2900' => {
                                      'name' => 'Matrox D-Series D2480',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro RTX 3000',
                                  'type' => 'open'
                                }
                    },
          '1F82' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1F83' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1630',
                                  'type' => 'open'
                                }
                    },
          '1F91' => {
                      '103C863E' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86E7' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86E8' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104312CF' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043156F' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14140032' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '144DC822' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462127E' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621281' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621284' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621285' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462129C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA229F' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3802' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3806' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3F1A' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A581001' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1F95' => {
                      '10251479' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147A' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147B' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86E7' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86E8' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8815' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431DFF' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E1F' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '144DC838' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212BD' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C5' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212D2' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C0' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C1' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3837' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3F95' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A581003' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A581006' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A581007' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1E833E30' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650 Ti',
                                  'type' => 'open'
                                }
                    },
          '1F96' => {
                      '14621297' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1F97' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX450',
                                  'type' => 'open'
                                }
                    },
          '1F98' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX450',
                                  'type' => 'open'
                                }
                    },
          '1F99' => {
                      '10251479' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147A' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147B' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8815' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104313B2' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431402' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431902' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212BD' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C5' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212D2' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22DA' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3F93' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1E833E30' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1F9C' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX450',
                                  'type' => 'open'
                                }
                    },
          '1F9D' => {
                      '1043128D' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043130D' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043149C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043185C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043189C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212F4' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621302' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462131B' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621326' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462132A' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462132E' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1F9F' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX550',
                                  'type' => 'open'
                                }
                    },
          '1FA0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX550',
                                  'type' => 'open'
                                }
                    },
          '1FB0' => {
                      '102812DB' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      '103C12DB' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      '10DE12DB' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      '10DE1485' => {
                                      'name' => 'NVIDIA DGX Display',
                                      'type' => 'open'
                                    },
                      '17AA12DB' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1FB1' => {
                      '10281488' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      '103C1488' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      '10DE1488' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      '17AA1488' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1FB2' => {
                      '10281489' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '103C1489' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '10DE1489' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '17AA1489' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1FB6' => {
                      'none' => {
                                  'name' => 'NVIDIA T600 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1FB7' => {
                      'none' => {
                                  'name' => 'NVIDIA T550 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1FB8' => {
                      '1028097E' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8785' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87F0' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621281' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212BD' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C0' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C1' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro T2000',
                                  'type' => 'open'
                                }
                    },
          '1FB9' => {
                      '10251479' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147A' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147B' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147C' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8785' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87F0' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212BD' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C0' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C1' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro T1000',
                                  'type' => 'open'
                                }
                    },
          '1FBA' => {
                      'none' => {
                                  'name' => 'NVIDIA T600 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1FBB' => {
                      'none' => {
                                  'name' => 'NVIDIA T500',
                                  'type' => 'open'
                                }
                    },
          '1FBC' => {
                      'none' => {
                                  'name' => 'NVIDIA T1200 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1FDD' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1FF0' => {
                      '10281612' => {
                                      'name' => 'NVIDIA T1000 8GB',
                                      'type' => 'open'
                                    },
                      '103C1612' => {
                                      'name' => 'NVIDIA T1000 8GB',
                                      'type' => 'open'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T1000 8GB',
                                      'type' => 'open'
                                    },
                      '10DE1612' => {
                                      'name' => 'NVIDIA T1000 8GB',
                                      'type' => 'open'
                                    },
                      '17AA1612' => {
                                      'name' => 'NVIDIA T1000 8GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1FF2' => {
                      '10281613' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    },
                      '103C1613' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    },
                      '103C18FF' => {
                                      'name' => 'NVIDIA T400E',
                                      'type' => 'open'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    },
                      '10DE1613' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    },
                      '10DE18FF' => {
                                      'name' => 'NVIDIA T400E',
                                      'type' => 'open'
                                    },
                      '17AA1613' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    },
                      '17AA18FF' => {
                                      'name' => 'NVIDIA T400E',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '1FF9' => {
                      'none' => {
                                  'name' => 'Quadro T1000',
                                  'type' => 'open'
                                }
                    },
          '20B0' => {
                      '10DE1450' => {
                                      'name' => 'NVIDIA A100-PG509-200',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA A100-SXM4-40GB',
                                  'type' => 'open'
                                }
                    },
          '20B2' => {
                      '10DE1463' => {
                                      'name' => 'NVIDIA A100-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE147F' => {
                                      'name' => 'NVIDIA A100-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE1622' => {
                                      'name' => 'NVIDIA A100-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE1623' => {
                                      'name' => 'NVIDIA A100-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE1625' => {
                                      'name' => 'NVIDIA PG509-210',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20B3' => {
                      '10DE14A7' => {
                                      'name' => 'NVIDIA A100-SXM-64GB',
                                      'type' => 'open'
                                    },
                      '10DE14A8' => {
                                      'name' => 'NVIDIA A100-SXM-64GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20B5' => {
                      '10DE1533' => {
                                      'name' => 'NVIDIA A100 80GB PCIe',
                                      'type' => 'open'
                                    },
                      '10DE1642' => {
                                      'name' => 'NVIDIA A100 80GB PCIe',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20B6' => {
                      '10DE1492' => {
                                      'name' => 'NVIDIA PG506-232',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20B7' => {
                      '10DE1532' => {
                                      'name' => 'NVIDIA A30',
                                      'type' => 'open'
                                    },
                      '10DE1804' => {
                                      'name' => 'NVIDIA A30',
                                      'type' => 'open'
                                    },
                      '10DE1852' => {
                                      'name' => 'NVIDIA A30',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20BD' => {
                      '10DE17F4' => {
                                      'name' => 'NVIDIA A800-SXM4-40GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20F1' => {
                      '10DE145F' => {
                                      'name' => 'NVIDIA A100-PCIE-40GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20F3' => {
                      '10DE179B' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE179C' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE179D' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE179E' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE179F' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE17A0' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE17A1' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE17A2' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20F5' => {
                      '10DE1799' => {
                                      'name' => 'NVIDIA A800 80GB PCIe',
                                      'type' => 'open'
                                    },
                      '10DE179A' => {
                                      'name' => 'NVIDIA A800 80GB PCIe LC',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20F6' => {
                      '1028180A' => {
                                      'name' => 'NVIDIA A800 40GB Active',
                                      'type' => 'open'
                                    },
                      '103C180A' => {
                                      'name' => 'NVIDIA A800 40GB Active',
                                      'type' => 'open'
                                    },
                      '10DE180A' => {
                                      'name' => 'NVIDIA A800 40GB Active',
                                      'type' => 'open'
                                    },
                      '17AA180A' => {
                                      'name' => 'NVIDIA A800 40GB Active',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '20FD' => {
                      '10DE17F8' => {
                                      'name' => 'NVIDIA AX800',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2182' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660 Ti',
                                  'type' => 'open'
                                }
                    },
          '2184' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660',
                                  'type' => 'open'
                                }
                    },
          '2187' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650 SUPER',
                                  'type' => 'open'
                                }
                    },
          '2188' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '2189' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 30HX',
                                  'type' => 'open'
                                }
                    },
          '2191' => {
                      '10280949' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C85FB' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C85FE' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86D6' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8741' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8744' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878D' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87AF' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87B3' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043171F' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104317EF' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104318D1' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14140032' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462128A' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462128B' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212CB' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212CC' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212D9' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA380C' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA381D' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA381E' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660 Ti',
                                  'type' => 'open'
                                }
                    },
          '2192' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650 Ti',
                                  'type' => 'open'
                                }
                    },
          '21C4' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660 SUPER',
                                  'type' => 'open'
                                }
                    },
          '21D1' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660 Ti',
                                  'type' => 'open'
                                }
                    },
          '2203' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3090 Ti',
                                  'type' => 'open'
                                }
                    },
          '2204' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3090',
                                  'type' => 'open'
                                }
                    },
          '2206' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080',
                                  'type' => 'open'
                                }
                    },
          '2207' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti',
                                  'type' => 'open'
                                }
                    },
          '2208' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080 Ti',
                                  'type' => 'open'
                                }
                    },
          '220A' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080',
                                  'type' => 'open'
                                }
                    },
          '220D' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 90HX',
                                  'type' => 'open'
                                }
                    },
          '2216' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080',
                                  'type' => 'open'
                                }
                    },
          '2230' => {
                      '10281459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    },
                      '103C1459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    },
                      '10DE1459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    },
                      '17AA1459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2231' => {
                      '1028147E' => {
                                      'name' => 'NVIDIA RTX A5000',
                                      'type' => 'open'
                                    },
                      '103C147E' => {
                                      'name' => 'NVIDIA RTX A5000',
                                      'type' => 'open'
                                    },
                      '10DE147E' => {
                                      'name' => 'NVIDIA RTX A5000',
                                      'type' => 'open'
                                    },
                      '17AA147E' => {
                                      'name' => 'NVIDIA RTX A5000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2232' => {
                      '1028163C' => {
                                      'name' => 'NVIDIA RTX A4500',
                                      'type' => 'open'
                                    },
                      '103C163C' => {
                                      'name' => 'NVIDIA RTX A4500',
                                      'type' => 'open'
                                    },
                      '10DE163C' => {
                                      'name' => 'NVIDIA RTX A4500',
                                      'type' => 'open'
                                    },
                      '17AA163C' => {
                                      'name' => 'NVIDIA RTX A4500',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2233' => {
                      '1028165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      '103C165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      '10DE165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      '17AA165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2235' => {
                      '10DE145A' => {
                                      'name' => 'NVIDIA A40',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2236' => {
                      '10DE1482' => {
                                      'name' => 'NVIDIA A10',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2237' => {
                      '10DE152F' => {
                                      'name' => 'NVIDIA A10G',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2238' => {
                      '10DE1677' => {
                                      'name' => 'NVIDIA A10M',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2321' => {
                      '10DE1839' => {
                                      'name' => 'NVIDIA H100 NVL',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2322' => {
                      '10DE17A4' => {
                                      'name' => 'NVIDIA H800 PCIe',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2324' => {
                      '10DE17A6' => {
                                      'name' => 'NVIDIA H800',
                                      'type' => 'open'
                                    },
                      '10DE17A8' => {
                                      'name' => 'NVIDIA H800',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2329' => {
                      '10DE198B' => {
                                      'name' => 'NVIDIA H20',
                                      'type' => 'open'
                                    },
                      '10DE198C' => {
                                      'name' => 'NVIDIA H20',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '232C' => {
                      '10DE2063' => {
                                      'name' => 'NVIDIA H20-3e',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2330' => {
                      '10DE16C0' => {
                                      'name' => 'NVIDIA H100 80GB HBM3',
                                      'type' => 'open'
                                    },
                      '10DE16C1' => {
                                      'name' => 'NVIDIA H100 80GB HBM3',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2331' => {
                      '10DE1626' => {
                                      'name' => 'NVIDIA H100 PCIe',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2335' => {
                      '10DE18BE' => {
                                      'name' => 'NVIDIA H200',
                                      'type' => 'open'
                                    },
                      '10DE18BF' => {
                                      'name' => 'NVIDIA H200',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2339' => {
                      '10DE17FC' => {
                                      'name' => 'NVIDIA H100',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '233A' => {
                      '10DE183A' => {
                                      'name' => 'NVIDIA H800 NVL',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '233B' => {
                      '10DE1996' => {
                                      'name' => 'NVIDIA H200 NVL',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2342' => {
                      '10DE16EB' => {
                                      'name' => 'NVIDIA GH200 120GB',
                                      'type' => 'open'
                                    },
                      '10DE1805' => {
                                      'name' => 'NVIDIA GH200 120GB',
                                      'type' => 'open'
                                    },
                      '10DE1809' => {
                                      'name' => 'NVIDIA GH200 480GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2348' => {
                      '10DE18D2' => {
                                      'name' => 'NVIDIA GH200 144G HBM3e',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2414' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '2420' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2438' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A5500 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2460' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2482' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti',
                                  'type' => 'open'
                                }
                    },
          '2484' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070',
                                  'type' => 'open'
                                }
                    },
          '2486' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '2487' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '2488' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070',
                                  'type' => 'open'
                                }
                    },
          '2489' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '248A' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 70HX',
                                  'type' => 'open'
                                }
                    },
          '249C' => {
                      '1D051194' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '249D' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24A0' => {
                      '1D051192' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24B0' => {
                      '102814AD' => {
                                      'name' => 'NVIDIA RTX A4000',
                                      'type' => 'open'
                                    },
                      '103C14AD' => {
                                      'name' => 'NVIDIA RTX A4000',
                                      'type' => 'open'
                                    },
                      '10DE14AD' => {
                                      'name' => 'NVIDIA RTX A4000',
                                      'type' => 'open'
                                    },
                      '17AA14AD' => {
                                      'name' => 'NVIDIA RTX A4000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '24B1' => {
                      '10DE1658' => {
                                      'name' => 'NVIDIA RTX A4000H',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '24B6' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A5000 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24B7' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A4000 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24B8' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A3000 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24B9' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A3000 12GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24BA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A4500 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24BB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A3000 12GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24C7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '24C9' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '24DC' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24DD' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '24FA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A4500 Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '2503' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '2504' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '2507' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050',
                                  'type' => 'open'
                                }
                    },
          '2508' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 OEM',
                                  'type' => 'open'
                                }
                    },
          '2520' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2521' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2523' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2531' => {
                      '1028151D' => {
                                      'name' => 'NVIDIA RTX A2000',
                                      'type' => 'open'
                                    },
                      '103C151D' => {
                                      'name' => 'NVIDIA RTX A2000',
                                      'type' => 'open'
                                    },
                      '10DE151D' => {
                                      'name' => 'NVIDIA RTX A2000',
                                      'type' => 'open'
                                    },
                      '17AA151D' => {
                                      'name' => 'NVIDIA RTX A2000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2544' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '2560' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2563' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2571' => {
                      '10281611' => {
                                      'name' => 'NVIDIA RTX A2000 12GB',
                                      'type' => 'open'
                                    },
                      '103C1611' => {
                                      'name' => 'NVIDIA RTX A2000 12GB',
                                      'type' => 'open'
                                    },
                      '10DE1611' => {
                                      'name' => 'NVIDIA RTX A2000 12GB',
                                      'type' => 'open'
                                    },
                      '17AA1611' => {
                                      'name' => 'NVIDIA RTX A2000 12GB',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2582' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050',
                                  'type' => 'open'
                                }
                    },
          '2584' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050',
                                  'type' => 'open'
                                }
                    },
          '25A0' => {
                      '103C8928' => {
                                      'name' => 'NVIDIA GeForce RTX 3050Ti Laptop GPU',
                                      'type' => 'open'
                                    },
                      '103C89F9' => {
                                      'name' => 'NVIDIA GeForce RTX 3050Ti Laptop GPU',
                                      'type' => 'open'
                                    },
                      '1D051196' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25A2' => {
                      '10280BAF' => {
                                      'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU',
                                      'type' => 'open'
                                    },
                      '1D051195' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25A5' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25A6' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX570',
                                  'type' => 'open'
                                }
                    },
          '25A7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '25A9' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '25AA' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX570 A',
                                  'type' => 'open'
                                }
                    },
          '25AB' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 4GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25AC' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 6GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25AD' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '25B0' => {
                      '10281878' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '103C1878' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '103C8D96' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '10DE1878' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '17AA1878' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '25B2' => {
                      '10281879' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      '103C1879' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      '103C8D95' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      '10DE1879' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      '17AA1879' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '25B6' => {
                      '10DE14A9' => {
                                      'name' => 'NVIDIA A16',
                                      'type' => 'open'
                                    },
                      '10DE157E' => {
                                      'name' => 'NVIDIA A2',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '25B8' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A2000 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25B9' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A1000 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25BA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A2000 8GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25BB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A500 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25BC' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A1000 6GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25BD' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A500 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25E2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25E5' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25EC' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 6GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '25ED' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '25F9' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A1000 Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '25FA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A2000 Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '25FB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A500 Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '2684' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090',
                                  'type' => 'open'
                                }
                    },
          '2685' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090 D',
                                  'type' => 'open'
                                }
                    },
          '2689' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070 Ti SUPER',
                                  'type' => 'open'
                                }
                    },
          '26B1' => {
                      '102816A1' => {
                                      'name' => 'NVIDIA RTX 6000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C16A1' => {
                                      'name' => 'NVIDIA RTX 6000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE16A1' => {
                                      'name' => 'NVIDIA RTX 6000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA16A1' => {
                                      'name' => 'NVIDIA RTX 6000 Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '26B2' => {
                      '102817FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C17FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE17FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA17FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '26B3' => {
                      '10281934' => {
                                      'name' => 'NVIDIA RTX 5880 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C1934' => {
                                      'name' => 'NVIDIA RTX 5880 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE1934' => {
                                      'name' => 'NVIDIA RTX 5880 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA1934' => {
                                      'name' => 'NVIDIA RTX 5880 Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '26B5' => {
                      '10DE169D' => {
                                      'name' => 'NVIDIA L40',
                                      'type' => 'open'
                                    },
                      '10DE17DA' => {
                                      'name' => 'NVIDIA L40',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '26B9' => {
                      '10DE1851' => {
                                      'name' => 'NVIDIA L40S',
                                      'type' => 'open'
                                    },
                      '10DE18CF' => {
                                      'name' => 'NVIDIA L40S',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '26BA' => {
                      '10DE1957' => {
                                      'name' => 'NVIDIA L20',
                                      'type' => 'open'
                                    },
                      '10DE1990' => {
                                      'name' => 'NVIDIA L20',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2702' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4080 SUPER',
                                  'type' => 'open'
                                }
                    },
          '2704' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4080',
                                  'type' => 'open'
                                }
                    },
          '2705' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070 Ti SUPER',
                                  'type' => 'open'
                                }
                    },
          '2709' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070',
                                  'type' => 'open'
                                }
                    },
          '2717' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2730' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 5000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2757' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2770' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 5000 Ada Generation Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '2782' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070 Ti',
                                  'type' => 'open'
                                }
                    },
          '2783' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070 SUPER',
                                  'type' => 'open'
                                }
                    },
          '2786' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070',
                                  'type' => 'open'
                                }
                    },
          '2788' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Ti',
                                  'type' => 'open'
                                }
                    },
          '27A0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '27B0' => {
                      '102816FA' => {
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C16FA' => {
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE16FA' => {
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA16FA' => {
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '27B1' => {
                      '1028180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '27B2' => {
                      '1028181B' => {
                                      'name' => 'NVIDIA RTX 4000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C181B' => {
                                      'name' => 'NVIDIA RTX 4000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE181B' => {
                                      'name' => 'NVIDIA RTX 4000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA181B' => {
                                      'name' => 'NVIDIA RTX 4000 Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '27B6' => {
                      '10DE1933' => {
                                      'name' => 'NVIDIA L2',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '27B8' => {
                      '10DE16CA' => {
                                      'name' => 'NVIDIA L4',
                                      'type' => 'open'
                                    },
                      '10DE16EE' => {
                                      'name' => 'NVIDIA L4',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '27BA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 4000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '27BB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 3500 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '27E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '27FB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 3500 Ada Generation Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '2803' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Ti',
                                  'type' => 'open'
                                }
                    },
          '2805' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Ti',
                                  'type' => 'open'
                                }
                    },
          '2808' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060',
                                  'type' => 'open'
                                }
                    },
          '2820' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2822' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 A Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2838' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 3000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2860' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2882' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060',
                                  'type' => 'open'
                                }
                    },
          '28A0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28A1' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28A3' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 A Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28B0' => {
                      '10281870' => {
                                      'name' => 'NVIDIA RTX 2000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C1870' => {
                                      'name' => 'NVIDIA RTX 2000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C1871' => {
                                      'name' => 'NVIDIA RTX 2000E Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE1870' => {
                                      'name' => 'NVIDIA RTX 2000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE1871' => {
                                      'name' => 'NVIDIA RTX 2000E Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA1870' => {
                                      'name' => 'NVIDIA RTX 2000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA1871' => {
                                      'name' => 'NVIDIA RTX 2000E Ada Generation',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '28B8' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 2000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28B9' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 1000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28BA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 500 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28BB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 500 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28E1' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28E3' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 A Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '28F8' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 2000 Ada Generation Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '2901' => {
                      '10DE1999' => {
                                      'name' => 'NVIDIA B200',
                                      'type' => 'open'
                                    },
                      '10DE199B' => {
                                      'name' => 'NVIDIA B200',
                                      'type' => 'open'
                                    },
                      '10DE20DA' => {
                                      'name' => 'NVIDIA B200',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2941' => {
                      '10DE2046' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE20CA' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE20D5' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE21C9' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE21CA' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'closed'
                                }
                    },
          '2B85' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5090',
                                  'type' => 'open'
                                }
                    },
          '2B87' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5090 D',
                                  'type' => 'open'
                                }
                    },
          '2BB1' => {
                      '1028204B' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition',
                                      'type' => 'open'
                                    },
                      '103C204B' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition',
                                      'type' => 'open'
                                    },
                      '10DE204B' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition',
                                      'type' => 'open'
                                    },
                      '17AA204B' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2BB4' => {
                      '1028204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    },
                      '103C204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    },
                      '10DE204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    },
                      '17AA204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'noname',
                                  'type' => 'open'
                                }
                    },
          '2C02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5080',
                                  'type' => 'open'
                                }
                    },
          '2C05' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5070 Ti',
                                  'type' => 'open'
                                }
                    },
          '2C18' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5090 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2C19' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2C58' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5090 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2C59' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2F04' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5070',
                                  'type' => 'open'
                                }
                    },
          '2F18' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5070 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2F58' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5070 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    }
);

# version 1

sub nvidiaPackage {
	return %NVIDIA_PACKAGE;
}

sub nvidiaProductID {
	return %NVIDIA_PRODUCT_ID;
}

1;

