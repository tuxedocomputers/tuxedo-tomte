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
	'open' => 'tuxedo-nvidia-driver-570-open',
	'closed' => 'tuxedo-nvidia-driver-570'
);

our %NVIDIA_PRODUCT_ID = (
          '040D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1600M'
                                }
                    },
          '0A34' => {
                      'none' => {
                                  'name' => 'GeForce GT 240M',
                                  'type' => 'legacy'
                                }
                    },
          '2C02' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 5080'
                                }
                    },
          '11BA' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K5000'
                                }
                    },
          '1DB1' => {
                      '10DE1307' => {
                                      'type' => 'closed',
                                      'name' => 'Tesla V100-SXM2-16GB-LS'
                                    },
                      'none' => {
                                  'name' => 'Tesla V100-SXM2-16GB',
                                  'type' => 'closed'
                                }
                    },
          '0044' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6800 XT'
                                }
                    },
          '031C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX Go700'
                                }
                    },
          '0DE8' => {
                      'none' => {
                                  'name' => 'GeForce GT 620M',
                                  'type' => 'legacy'
                                }
                    },
          '2231' => {
                      '10DE147E' => {
                                      'name' => 'NVIDIA RTX A5000',
                                      'type' => 'open'
                                    },
                      '17AA147E' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A5000'
                                    },
                      '103C147E' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A5000'
                                    },
                      '1028147E' => {
                                      'name' => 'NVIDIA RTX A5000',
                                      'type' => 'open'
                                    }
                    },
          '1F07' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070'
                                }
                    },
          '0DF7' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 520M'
                                }
                    },
          '2808' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060',
                                  'type' => 'open'
                                }
                    },
          '27FB' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 3500 Ada Generation Embedded GPU'
                                }
                    },
          '0A64' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Second Generation ION'
                                }
                    },
          '0293' => {
                      'none' => {
                                  'name' => 'GeForce 7950 GX2',
                                  'type' => 'legacy'
                                }
                    },
          '0846' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9200'
                                }
                    },
          '06D9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 5000'
                                }
                    },
          '1B82' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1070 Ti'
                                }
                    },
          '00FD' => {
                      'none' => {
                                  'name' => 'Quadro FX 330/Quadro NVS 280 PCI-E',
                                  'type' => 'legacy'
                                }
                    },
          '0282' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 Ti 4800 SE'
                                }
                    },
          '1BB1' => {
                      'none' => {
                                  'name' => 'Quadro P4000',
                                  'type' => 'closed'
                                }
                    },
          '233A' => {
                      '10DE183A' => {
                                      'name' => 'NVIDIA H800 NVL',
                                      'type' => 'open'
                                    }
                    },
          '061C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 3600M'
                                }
                    },
          '00F3' => {
                      'none' => {
                                  'name' => 'GeForce 6200',
                                  'type' => 'legacy'
                                }
                    },
          '029D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 3500'
                                }
                    },
          '13DA' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980',
                                  'type' => 'closed'
                                }
                    },
          '0CA2' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 320'
                                }
                    },
          '0628' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9800M GTS'
                                }
                    },
          '0311' => {
                      'none' => {
                                  'name' => 'GeForce FX 5600 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '1E81' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 SUPER',
                                  'type' => 'open'
                                }
                    },
          '28F8' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 2000 Ada Generation Embedded GPU'
                                }
                    },
          '06E4' => {
                      'none' => {
                                  'name' => 'GeForce 8400 GS',
                                  'type' => 'legacy'
                                }
                    },
          '1390' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 845M'
                                }
                    },
          '27B6' => {
                      '10DE1933' => {
                                      'name' => 'NVIDIA L2',
                                      'type' => 'open'
                                    }
                    },
          '2730' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 5000 Ada Generation Laptop GPU'
                                }
                    },
          '0862' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9400M G'
                                }
                    },
          '128B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 710'
                                }
                    },
          '0328' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5200 32M/64M',
                                  'type' => 'legacy'
                                }
                    },
          '0611' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '248A' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 70HX',
                                  'type' => 'open'
                                }
                    },
          '0DD1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 460M'
                                }
                    },
          '13B9' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVS 810'
                                }
                    },
          '0403' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8600 GS'
                                }
                    },
          '01DA' => {
                      'none' => {
                                  'name' => 'Quadro NVS 110M',
                                  'type' => 'legacy'
                                }
                    },
          '1207' => {
                      'none' => {
                                  'name' => 'GeForce GT 645',
                                  'type' => 'legacy'
                                }
                    },
          '0281' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 Ti 4200 with AGP8X'
                                }
                    },
          '25A5' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU'
                                }
                    },
          '1FBB' => {
                      'none' => {
                                  'name' => 'NVIDIA T500',
                                  'type' => 'open'
                                }
                    },
          '1B81' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1070'
                                }
                    },
          '0250' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4600',
                                  'type' => 'legacy'
                                }
                    },
          '2232' => {
                      '1028163C' => {
                                      'name' => 'NVIDIA RTX A4500',
                                      'type' => 'open'
                                    },
                      '103C163C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A4500'
                                    },
                      '17AA163C' => {
                                      'name' => 'NVIDIA RTX A4500',
                                      'type' => 'open'
                                    },
                      '10DE163C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A4500'
                                    }
                    },
          '086C' => {
                      'none' => {
                                  'name' => 'GeForce 9300 / nForce 730i',
                                  'type' => 'legacy'
                                }
                    },
          '1D81' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA TITAN V'
                                }
                    },
          '118A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GRID K520'
                                }
                    },
          '0CAC' => {
                      'none' => {
                                  'name' => 'GeForce GT 220',
                                  'type' => 'legacy'
                                }
                    },
          '0143' => {
                      'none' => {
                                  'name' => 'GeForce 6600 VE',
                                  'type' => 'legacy'
                                }
                    },
          '06E5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9300M GS'
                                }
                    },
          '0847' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9100'
                                }
                    },
          '0DF6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 550M'
                                }
                    },
          '25ED' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '1F06' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060 SUPER',
                                  'type' => 'open'
                                }
                    },
          '034E' => {
                      'none' => {
                                  'name' => 'Quadro FX 1100',
                                  'type' => 'legacy'
                                }
                    },
          '24BA' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A4500 Laptop GPU'
                                }
                    },
          '0153' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro2 Pro'
                                }
                    },
          '0612' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GTX/9800 GTX+',
                                  'type' => 'legacy'
                                }
                    },
          '0DD2' => {
                      'none' => {
                                  'name' => 'GeForce GT 445M',
                                  'type' => 'legacy'
                                }
                    },
          '028C' => {
                      'none' => {
                                  'name' => 'Quadro4 700 GoGL',
                                  'type' => 'legacy'
                                }
                    },
          '0861' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '2786' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4070',
                                  'type' => 'open'
                                }
                    },
          '0A65' => {
                      'none' => {
                                  'name' => 'GeForce 210',
                                  'type' => 'legacy'
                                }
                    },
          '0FDF' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 740M'
                                }
                    },
          '014D' => {
                      'none' => {
                                  'name' => 'Quadro FX 550',
                                  'type' => 'legacy'
                                }
                    },
          '0FF8' => {
                      'none' => {
                                  'name' => 'Quadro K500M',
                                  'type' => 'legacy'
                                }
                    },
          '1EB1' => {
                      'none' => {
                                  'name' => 'Quadro RTX 4000',
                                  'type' => 'open'
                                }
                    },
          '1096' => {
                      '10DE0911' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla C2050'
                                    },
                      'none' => {
                                  'name' => 'Tesla C2075',
                                  'type' => 'legacy'
                                }
                    },
          '0045' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '134D' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940MX',
                                  'type' => 'closed'
                                }
                    },
          '1E93' => {
                      '103C86C7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583002' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '155870D1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '145886B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A0' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582009' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809D2' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2080 Super'
                                },
                      '1A58200A' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D051089' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '155850D3' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '10251401' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C5' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B4' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C3' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '1025149C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '145876B0' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '145875B2' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '146212B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8607' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212AE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '145878A1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '103C87A6' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '103C8736' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '103C8772' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '1206' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 555'
                                }
                    },
          '2882' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060',
                                  'type' => 'open'
                                }
                    },
          '0E24' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 460'
                                }
                    },
          '0312' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5600'
                                }
                    },
          '2520' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1E82' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080',
                                  'type' => 'open'
                                }
                    },
          '1FA0' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce MX550'
                                }
                    },
          '0A35' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 325M'
                                }
                    },
          '0098' => {
                      'none' => {
                                  'name' => 'GeForce Go 7800',
                                  'type' => 'legacy'
                                }
                    },
          '11A3' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 680MX'
                                }
                    },
          '0240' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6150'
                                }
                    },
          '20B6' => {
                      '10DE1492' => {
                                      'name' => 'NVIDIA PG506-232',
                                      'type' => 'open'
                                    }
                    },
          '1BB5' => {
                      '17AA2269' => {
                                      'name' => 'Quadro P5200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P5200'
                                },
                      '17AA2268' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro P5200 with Max-Q Design'
                                    }
                    },
          '25A2' => {
                      '1D051195' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      '10280BAF' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '11B7' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K4100M'
                                }
                    },
          '21C4' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660 SUPER',
                                  'type' => 'open'
                                }
                    },
          '13F1' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro M4000'
                                }
                    },
          '2571' => {
                      '103C1611' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A2000 12GB'
                                    },
                      '17AA1611' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A2000 12GB'
                                    },
                      '10281611' => {
                                      'name' => 'NVIDIA RTX A2000 12GB',
                                      'type' => 'open'
                                    },
                      '10DE1611' => {
                                      'name' => 'NVIDIA RTX A2000 12GB',
                                      'type' => 'open'
                                    }
                    },
          '0FF9' => {
                      'none' => {
                                  'name' => 'Quadro K2000D',
                                  'type' => 'legacy'
                                }
                    },
          '0864' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9300'
                                }
                    },
          '2235' => {
                      '10DE145A' => {
                                      'name' => 'NVIDIA A40',
                                      'type' => 'open'
                                    }
                    },
          '0CA4' => {
                      'none' => {
                                  'name' => 'GeForce GT 340',
                                  'type' => 'legacy'
                                }
                    },
          '11C3' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 650 Ti'
                                }
                    },
          '1DB5' => {
                      'none' => {
                                  'name' => 'Tesla V100-SXM2-32GB',
                                  'type' => 'closed'
                                },
                      '10DE1308' => {
                                      'type' => 'closed',
                                      'name' => 'Tesla V100-SXM2-32GB-LS'
                                    }
                    },
          '06E2' => {
                      'none' => {
                                  'name' => 'GeForce 8400',
                                  'type' => 'legacy'
                                }
                    },
          '0188' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro4 580 XGL'
                                }
                    },
          '0DFA' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 1000M'
                                }
                    },
          '11E2' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 765M'
                                }
                    },
          '104B' => {
                      '174BA625' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 625 (OEM)'
                                },
                      '1043844C' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      '174B0625' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625'
                                    },
                      '1462B590' => {
                                      'name' => 'GeForce GT 625',
                                      'type' => 'legacy'
                                    },
                      '1043846B' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625'
                                    }
                    },
          '1F0A' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce GTX 1650'
                                }
                    },
          '0099' => {
                      'none' => {
                                  'name' => 'GeForce Go 7800 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '0101' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce DDR'
                                }
                    },
          '24B6' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A5000 Laptop GPU'
                                }
                    },
          '1B84' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 3GB',
                                  'type' => 'closed'
                                }
                    },
          '06CD' => {
                      'none' => {
                                  'name' => 'GeForce GTX 470',
                                  'type' => 'legacy'
                                }
                    },
          '0615' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTS 250'
                                }
                    },
          '0DC0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 440'
                                }
                    },
          '1C03' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 6GB',
                                  'type' => 'closed'
                                }
                    },
          '13D7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980M',
                                  'type' => 'closed'
                                }
                    },
          '105B' => {
                      '17AA30F3' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 705A'
                                    },
                      '17AA36A1' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800A'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 705M'
                                },
                      '17AA30B1' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '103C2AFB' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 705A'
                                    }
                    },
          '0A62' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 205'
                                }
                    },
          '109A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 5010M'
                                }
                    },
          '0042' => {
                      'none' => {
                                  'name' => 'GeForce 6800 LE',
                                  'type' => 'legacy'
                                }
                    },
          '2487' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3060'
                                }
                    },
          '2460' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3080 Ti Laptop GPU'
                                }
                    },
          '01D7' => {
                      'none' => {
                                  'name' => 'GeForce Go 7300',
                                  'type' => 'legacy'
                                }
                    },
          '10C5' => {
                      'none' => {
                                  'name' => 'GeForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '0A32' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 415'
                                }
                    },
          '2414' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '107C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'NVS 315'
                                }
                    },
          '0A3C' => {
                      'none' => {
                                  'name' => 'Quadro FX 880M',
                                  'type' => 'legacy'
                                }
                    },
          '0A2D' => {
                      'none' => {
                                  'name' => 'GeForce GT 320M',
                                  'type' => 'legacy'
                                }
                    },
          '2C05' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5070 Ti',
                                  'type' => 'open'
                                }
                    },
          '060F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 285M'
                                }
                    },
          '0630' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9700 S'
                                }
                    },
          '11E1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 765M'
                                }
                    },
          '17C2' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX TITAN X'
                                }
                    },
          '11B6' => {
                      'none' => {
                                  'name' => 'Quadro K3100M',
                                  'type' => 'legacy'
                                }
                    },
          '0E22' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 460'
                                }
                    },
          '06E1' => {
                      'none' => {
                                  'name' => 'GeForce 9300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0314' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5600XT'
                                }
                    },
          '20B7' => {
                      '10DE1804' => {
                                      'name' => 'NVIDIA A30',
                                      'type' => 'open'
                                    },
                      '10DE1852' => {
                                      'name' => 'NVIDIA A30',
                                      'type' => 'open'
                                    },
                      '10DE1532' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A30'
                                    }
                    },
          '1E84' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070 SUPER'
                                }
                    },
          '2941' => {
                      '10DE20CA' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GB200'
                                    },
                      '10DE2046' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE21CA' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE21C9' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    },
                      '10DE20D5' => {
                                      'name' => 'NVIDIA GB200',
                                      'type' => 'closed'
                                    }
                    },
          '0330' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5900 Ultra'
                                }
                    },
          '0A6C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'NVS 3100M'
                                }
                    },
          '084A' => {
                      'none' => {
                                  'name' => 'nForce 730a',
                                  'type' => 'legacy'
                                }
                    },
          '060B' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GT',
                                  'type' => 'legacy'
                                }
                    },
          '13F2' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla M60'
                                }
                    },
          '0614' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9800 GT'
                                }
                    },
          '1187' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 760'
                                }
                    },
          '06FB' => {
                      'none' => {
                                  'name' => 'Quadro FX 370M',
                                  'type' => 'legacy'
                                }
                    },
          '05EB' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 295'
                                }
                    },
          '2342' => {
                      '10DE16EB' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GH200 120GB'
                                    },
                      '10DE1805' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GH200 120GB'
                                    },
                      '10DE1809' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GH200 480GB'
                                    }
                    },
          '0CA5' => {
                      'none' => {
                                  'name' => 'GeForce GT 220',
                                  'type' => 'legacy'
                                }
                    },
          '0DE9' => {
                      '10250754' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 630M'
                                },
                      '1025072B' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '10250692' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1025072E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1B0A2210' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    },
                      '10250753' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10250725' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA3977' => {
                                      'name' => 'GeForce GT 640M LE',
                                      'type' => 'legacy'
                                    },
                      '10250728' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    }
                    },
          '06EC' => {
                      'none' => {
                                  'name' => 'GeForce G 105M',
                                  'type' => 'legacy'
                                }
                    },
          '1EB5' => {
                      '103C8738' => {
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
                      '103C8736' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025149C' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '10251401' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '10251375' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '17AA22BA' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '1A582008' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212C6' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'Quadro RTX 5000'
                                },
                      '1A58200A' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22B8' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '102809C3' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '103C8785' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431DD1' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro RTX 5000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8783' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 5000 with Max-Q Design'
                                    }
                    },
          '24B7' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A4000 Laptop GPU'
                                }
                    },
          '0041' => {
                      'none' => {
                                  'name' => 'GeForce 6800',
                                  'type' => 'legacy'
                                }
                    },
          '1DB4' => {
                      '10DE1306' => {
                                      'type' => 'closed',
                                      'name' => 'Tesla V100-PCIE-16GB-LS'
                                    },
                      'none' => {
                                  'name' => 'Tesla V100-PCIE-16GB',
                                  'type' => 'closed'
                                }
                    },
          '27BA' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 4000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0865' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'ION'
                                }
                    },
          '1E09' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA CMP 50HX'
                                }
                    },
          '1D16' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX330',
                                  'type' => 'closed'
                                }
                    },
          '0A23' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 210'
                                }
                    },
          '2486' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '1BB4' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla P6'
                                }
                    },
          '25AC' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 6GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0FEA' => {
                      'none' => {
                                  'name' => 'GeForce GT 755M',
                                  'type' => 'legacy'
                                }
                    },
          '0A78' => {
                      'none' => {
                                  'name' => 'Quadro FX 380 LP',
                                  'type' => 'legacy'
                                }
                    },
          '01D6' => {
                      'none' => {
                                  'name' => 'GeForce Go 7200',
                                  'type' => 'legacy'
                                }
                    },
          '06D8' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 6000'
                                }
                    },
          '06FF' => {
                      'none' => {
                                  'name' => 'HICx16 + Graphics',
                                  'type' => 'legacy'
                                },
                      '10DE0711' => {
                                      'type' => 'legacy',
                                      'name' => 'HICx8 + Graphics'
                                    }
                    },
          '0175' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 420 Go'
                                }
                    },
          '0644' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9500 GS'
                                }
                    },
          '0428' => {
                      'none' => {
                                  'name' => 'GeForce 8400M G',
                                  'type' => 'legacy'
                                }
                    },
          '0DF0' => {
                      'none' => {
                                  'name' => 'GeForce GT 425M',
                                  'type' => 'legacy'
                                }
                    },
          '1F95' => {
                      '146212C5' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8815' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E1F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '1A581003' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A581006' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '146212BD' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '1A581007' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650 Ti',
                                  'type' => 'open'
                                },
                      '1E833E30' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147B' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431DFF' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86E7' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '103C86E8' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '1025147A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '146212D2' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251479' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '17AA3F95' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '17AA3837' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '144DC838' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design'
                                    },
                      '17AA22C1' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C0' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '0603' => {
                      'none' => {
                                  'name' => 'GeForce GT 230',
                                  'type' => 'legacy'
                                }
                    },
          '0344' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5700VE'
                                }
                    },
          '06FD' => {
                      'none' => {
                                  'name' => 'Quadro NVS 295',
                                  'type' => 'legacy'
                                }
                    },
          '05ED' => {
                      'none' => {
                                  'name' => 'Quadroplex 2200 D2',
                                  'type' => 'legacy'
                                }
                    },
          '07E2' => {
                      'none' => {
                                  'name' => 'GeForce 7050 / nForce 630i',
                                  'type' => 'legacy'
                                }
                    },
          '17F1' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro M6000 24GB'
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
                                    }
                    },
          '1026' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K20s'
                                }
                    },
          '060D' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '05E3' => {
                      'none' => {
                                  'name' => 'GeForce GTX 285',
                                  'type' => 'legacy'
                                }
                    },
          '1FF0' => {
                      '10DE1612' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T1000 8GB'
                                    },
                      '103C8A80' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T1000 8GB'
                                    },
                      '10281612' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T1000 8GB'
                                    },
                      '17AA1612' => {
                                      'name' => 'NVIDIA T1000 8GB',
                                      'type' => 'open'
                                    },
                      '103C1612' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T1000 8GB'
                                    }
                    },
          '0028' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'RIVA TNT2/TNT2 Pro'
                                }
                    },
          '0FC9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 730'
                                }
                    },
          '28E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1005' => {
                      'none' => {
                                  'name' => 'GeForce GTX TITAN',
                                  'type' => 'legacy'
                                }
                    },
          '25B9' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A1000 Laptop GPU'
                                }
                    },
          '0197' => {
                      'none' => {
                                  'name' => 'Tesla C870',
                                  'type' => 'legacy'
                                }
                    },
          '1295' => {
                      '103C2B0D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710A'
                                    },
                      '17AA367A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 805A'
                                    },
                      '103C2B20' => {
                                      'name' => 'GeForce 810A',
                                      'type' => 'legacy'
                                    },
                      '103C2B21' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 810A'
                                    },
                      '17AA367C' => {
                                      'name' => 'GeForce 710A',
                                      'type' => 'legacy'
                                    },
                      '103C2B0F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710A'
                                    },
                      'none' => {
                                  'name' => 'GeForce 710M',
                                  'type' => 'legacy'
                                }
                    },
          '2208' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3080 Ti'
                                }
                    },
          '1200' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 560 Ti'
                                }
                    },
          '0654' => {
                      '104314A2' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 320M'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 220M',
                                  'type' => 'legacy'
                                },
                      '104314D2' => {
                                      'name' => 'GeForce GT 320M',
                                      'type' => 'legacy'
                                    }
                    },
          '0A2B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 330M'
                                }
                    },
          '1248' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '2189' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA CMP 30HX'
                                }
                    },
          '0655' => {
                      '106B0633' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 120'
                                    }
                    },
          '26BA' => {
                      '10DE1990' => {
                                      'name' => 'NVIDIA L20',
                                      'type' => 'open'
                                    },
                      '10DE1957' => {
                                      'name' => 'NVIDIA L20',
                                      'type' => 'open'
                                    }
                    },
          '1427' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 965M',
                                  'type' => 'closed'
                                },
                      '1458D003' => {
                                      'name' => 'NVIDIA GeForce GTX 950',
                                      'type' => 'closed'
                                    }
                    },
          '0E3B' => {
                      'none' => {
                                  'name' => 'Quadro 4000M',
                                  'type' => 'legacy'
                                }
                    },
          '063A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 2700M'
                                }
                    },
          '1004' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780',
                                  'type' => 'legacy'
                                }
                    },
          '0840' => {
                      'none' => {
                                  'name' => 'GeForce 8200M',
                                  'type' => 'legacy'
                                }
                    },
          '05FE' => {
                      'none' => {
                                  'name' => 'Quadro FX 4800',
                                  'type' => 'legacy'
                                }
                    },
          '1CFB' => {
                      'none' => {
                                  'name' => 'Quadro P1000',
                                  'type' => 'closed'
                                },
                      '102B2600' => {
                                      'type' => 'closed',
                                      'name' => 'Matrox D-Series D1480'
                                    },
                      '102B2700' => {
                                      'type' => 'closed',
                                      'name' => 'Matrox D-Series D1450'
                                    }
                    },
          '2504' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '11CB' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 740'
                                }
                    },
          '1BE0' => {
                      '10251221' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431BF0' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design'
                                    },
                      '10431031' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design'
                                    },
                      '1458355B' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1080',
                                  'type' => 'closed'
                                },
                      '10280876' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design'
                                    },
                      '1025123E' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design'
                                    },
                      '1028088B' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '102807C0' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    }
                    },
          '20FD' => {
                      '10DE17F8' => {
                                      'name' => 'NVIDIA AX800',
                                      'type' => 'open'
                                    }
                    },
          '02E0' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '20F3' => {
                      '10DE179D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A800-SXM4-80GB'
                                    },
                      '10DE17A0' => {
                                      'name' => 'NVIDIA A800-SXM4-80GB',
                                      'type' => 'open'
                                    },
                      '10DE17A1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A800-SXM4-80GB'
                                    },
                      '10DE179B' => {
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
                      '10DE179C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A800-SXM4-80GB'
                                    },
                      '10DE17A2' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A800-SXM4-80GB'
                                    }
                    },
          '13C2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 970',
                                  'type' => 'closed'
                                }
                    },
          '1C60' => {
                      '103C8467' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8390' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060',
                                  'type' => 'closed'
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
                                  'type' => 'open',
                                  'name' => 'Quadro RTX 3000'
                                }
                    },
          '1027' => {
                      'none' => {
                                  'name' => 'Tesla K40st',
                                  'type' => 'legacy'
                                }
                    },
          '0A6E' => {
                      'none' => {
                                  'name' => 'GeForce 305M',
                                  'type' => 'legacy'
                                },
                      '17AA3607' => {
                                      'type' => 'legacy',
                                      'name' => 'Second Generation ION'
                                    }
                    },
          '0398' => {
                      'none' => {
                                  'name' => 'GeForce Go 7600',
                                  'type' => 'legacy'
                                }
                    },
          '0FE0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660M',
                                  'type' => 'legacy'
                                }
                    },
          '1198' => {
                      'none' => {
                                  'name' => 'GeForce GTX 880M',
                                  'type' => 'legacy'
                                }
                    },
          '1C30' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P2000'
                                }
                    },
          '0174' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 440 Go'
                                }
                    },
          '1CB6' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P620'
                                }
                    },
          '1089' => {
                      'none' => {
                                  'name' => 'GeForce GTX 580',
                                  'type' => 'legacy'
                                }
                    },
          '004E' => {
                      'none' => {
                                  'name' => 'Quadro FX 4000',
                                  'type' => 'legacy'
                                }
                    },
          '0645' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9500 GS'
                                }
                    },
          '27B0' => {
                      '103C16FA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation'
                                    },
                      '17AA16FA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation'
                                    },
                      '102816FA' => {
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE16FA' => {
                                      'name' => 'NVIDIA RTX 4000 SFF Ada Generation',
                                      'type' => 'open'
                                    }
                    },
          '0169' => {
                      'none' => {
                                  'name' => 'GeForce 6250',
                                  'type' => 'legacy'
                                }
                    },
          '0247' => {
                      'none' => {
                                  'name' => 'GeForce Go 6100',
                                  'type' => 'legacy'
                                }
                    },
          '07E1' => {
                      'none' => {
                                  'name' => 'GeForce 7100 / nForce 630i',
                                  'type' => 'legacy'
                                }
                    },
          '0652' => {
                      'none' => {
                                  'name' => 'GeForce GT 130M',
                                  'type' => 'legacy'
                                },
                      '152D0850' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 240M LE'
                                    }
                    },
          '0113' => {
                      'none' => {
                                  'name' => 'Quadro2 MXR/EX/Go',
                                  'type' => 'legacy'
                                }
                    },
          '1F91' => {
                      '1A581001' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                },
                      '104312CF' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '17AA229F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '1462127E' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462129C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '14140032' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '144DC822' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '14621284' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3F1A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '14621281' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '14621285' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3802' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043156F' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3806' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '103C86E7' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '103C863E' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86E8' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '0399' => {
                      'none' => {
                                  'name' => 'GeForce Go 7600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '1401' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 960',
                                  'type' => 'closed'
                                }
                    },
          '100C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX TITAN Black'
                                }
                    },
          '014F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6200'
                                }
                    },
          '134B' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 940MX'
                                }
                    },
          '134F' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 920MX'
                                }
                    },
          '1088' => {
                      'none' => {
                                  'name' => 'GeForce GTX 590',
                                  'type' => 'legacy'
                                }
                    },
          '2330' => {
                      '10DE16C1' => {
                                      'name' => 'NVIDIA H100 80GB HBM3',
                                      'type' => 'open'
                                    },
                      '10DE16C0' => {
                                      'name' => 'NVIDIA H100 80GB HBM3',
                                      'type' => 'open'
                                    }
                    },
          '1199' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 870M'
                                },
                      '1458D001' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GTX 760'
                                    }
                    },
          '0171' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 MX 440'
                                }
                    },
          '00C3' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
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
                                    }
                    },
          '0168' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 6400'
                                }
                    },
          '061E' => {
                      'none' => {
                                  'name' => 'Quadro FX 3700M',
                                  'type' => 'legacy'
                                }
                    },
          '1F9C' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX450',
                                  'type' => 'open'
                                }
                    },
          '00CD' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 3450/4000 SDI'
                                }
                    },
          '0342' => {
                      'none' => {
                                  'name' => 'GeForce FX 5700',
                                  'type' => 'legacy'
                                }
                    },
          '1D34' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P520'
                                }
                    },
          '2216' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080',
                                  'type' => 'open'
                                }
                    },
          '139A' => {
                      '17AA363F' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 950A'
                                    },
                      '17AA36B9' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 950M',
                                  'type' => 'closed'
                                },
                      '17AA3640' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 950A'
                                    },
                      '17AA3647' => {
                                      'name' => 'NVIDIA GeForce GTX 950A',
                                      'type' => 'closed'
                                    },
                      '17AA362C' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 950A'
                                    },
                      '17AA362F' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 950A'
                                    }
                    },
          '1291' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 735M'
                                }
                    },
          '1001' => {
                      'none' => {
                                  'name' => 'GeForce GTX TITAN Z',
                                  'type' => 'legacy'
                                }
                    },
          '017C' => {
                      'none' => {
                                  'name' => 'Quadro4 500 GoGL',
                                  'type' => 'legacy'
                                }
                    },
          '1CBA' => {
                      '17AA2266' => {
                                      'name' => 'Quadro P2000 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P2000',
                                  'type' => 'closed'
                                },
                      '17AA2267' => {
                                      'name' => 'Quadro P2000 with Max-Q Design',
                                      'type' => 'closed'
                                    }
                    },
          '01D0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7350 LE'
                                }
                    },
          '0FD3' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 640M LE'
                                }
                    },
          '1D10' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce MX150'
                                }
                    },
          '0637' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '029F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 4500 X2'
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
          '0172' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 420',
                                  'type' => 'legacy'
                                }
                    },
          '0029' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'RIVA TNT2 Ultra'
                                }
                    },
          '064C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9650M GT'
                                }
                    },
          '25B8' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A2000 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0FC8' => {
                      'none' => {
                                  'name' => 'GeForce GT 740',
                                  'type' => 'legacy'
                                }
                    },
          '174D' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce MX130'
                                }
                    },
          '1402' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 950'
                                }
                    },
          '1249' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '2188' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '1180' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 680'
                                }
                    },
          '029B' => {
                      'none' => {
                                  'name' => 'Quadro FX 1500M',
                                  'type' => 'legacy'
                                }
                    },
          '1F83' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce GTX 1630'
                                }
                    },
          '0651' => {
                      'none' => {
                                  'name' => 'GeForce G 110M',
                                  'type' => 'legacy'
                                }
                    },
          '034C' => {
                      'none' => {
                                  'name' => 'Quadro FX Go1000',
                                  'type' => 'legacy'
                                }
                    },
          '07E5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7050 / nForce 620i'
                                }
                    },
          '0DC6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTS 450'
                                }
                    },
          '040F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1700'
                                }
                    },
          '00FB' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce PCX 5900'
                                }
                    },
          '102A' => {
                      'none' => {
                                  'name' => 'Tesla K40t',
                                  'type' => 'legacy'
                                }
                    },
          '0641' => {
                      'none' => {
                                  'name' => 'GeForce 9400 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0429' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro NVS 140M'
                                }
                    },
          '24B0' => {
                      '10DE14AD' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A4000'
                                    },
                      '17AA14AD' => {
                                      'name' => 'NVIDIA RTX A4000',
                                      'type' => 'open'
                                    },
                      '103C14AD' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A4000'
                                    },
                      '102814AD' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A4000'
                                    }
                    },
          '086E' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9100M G'
                                }
                    },
          '1ED3' => {
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FD0' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '10251432' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '10431E51' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCF' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431D61' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 Super',
                                  'type' => 'open'
                                },
                      '102809D1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '10431F01' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    },
                      '103C8746' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 Super with Max-Q Design'
                                    }
                    },
          '1292' => {
                      '17AA367C' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 740A'
                                    },
                      '17AA3675' => {
                                      'name' => 'GeForce GT 740A',
                                      'type' => 'legacy'
                                    },
                      '17AA3684' => {
                                      'name' => 'GeForce GT 740A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 740M'
                                }
                    },
          '0341' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5700 Ultra'
                                }
                    },
          '065C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 770M'
                                }
                    },
          '040B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro NVS 320M'
                                }
                    },
          '1E30' => {
                      'none' => {
                                  'name' => 'Quadro RTX 6000',
                                  'type' => 'open'
                                },
                      '10DE129E' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 8000'
                                    },
                      '103C129E' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 8000'
                                    },
                      '1028129E' => {
                                      'name' => 'Quadro RTX 8000',
                                      'type' => 'open'
                                    }
                    },
          '1091' => {
                      '10DE098D' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla M2090',
                                  'type' => 'legacy'
                                },
                      '10DE0891' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      '10DE088E' => {
                                      'name' => 'Tesla X2090',
                                      'type' => 'legacy'
                                    },
                      '10DE0974' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla X2090'
                                    }
                    },
          '1EB6' => {
                      '103C8785' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '102809C3' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22BA' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '103C8738' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '103C8772' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'name' => 'Quadro RTX 4000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'Quadro RTX 4000'
                                },
                      '103C8736' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '146212C6' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '17AA22B8' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    },
                      '14621277' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 4000 with Max-Q Design'
                                    }
                    },
          '0DEB' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '1201' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 560'
                                }
                    },
          '1C62' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '0617' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9800M GTX'
                                }
                    },
          '13C0' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 980'
                                }
                    },
          '1184' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 770'
                                }
                    },
          '06F9' => {
                      'none' => {
                                  'name' => 'Quadro FX 370 LP',
                                  'type' => 'legacy'
                                },
                      '10DE060D' => {
                                      'type' => 'legacy',
                                      'name' => 'Quadro FX 370 Low Profile'
                                    }
                    },
          '0215' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0DCE' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 555M'
                                }
                    },
          '28E1' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4050 Laptop GPU'
                                }
                    },
          '0DFC' => {
                      'none' => {
                                  'name' => 'NVS 5200M',
                                  'type' => 'legacy'
                                }
                    },
          '2860' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070 Laptop GPU'
                                }
                    },
          '0533' => {
                      'none' => {
                                  'name' => 'GeForce 7000M / nForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '0FE2' => {
                      'none' => {
                                  'name' => 'GeForce GT 745M',
                                  'type' => 'legacy'
                                }
                    },
          '1E87' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2080'
                                }
                    },
          '2192' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650 Ti',
                                  'type' => 'open'
                                }
                    },
          '0866' => {
                      '106B00B1' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 9400M'
                                    },
                      'none' => {
                                  'name' => 'GeForce 9400M G',
                                  'type' => 'legacy'
                                }
                    },
          '17F0' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro M6000'
                                }
                    },
          '0DEF' => {
                      'none' => {
                                  'name' => 'NVS 5400M',
                                  'type' => 'legacy'
                                }
                    },
          '27B2' => {
                      '10DE181B' => {
                                      'name' => 'NVIDIA RTX 4000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '1028181B' => {
                                      'name' => 'NVIDIA RTX 4000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C181B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 4000 Ada Generation'
                                    },
                      '17AA181B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 4000 Ada Generation'
                                    }
                    },
          '1BB7' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P4000'
                                },
                      '15589501' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro P4000 with Max-Q Design'
                                    },
                      '146211E9' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro P4000 with Max-Q Design'
                                    }
                    },
          '25BD' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A500 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0309' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1000'
                                }
                    },
          '0410' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 330'
                                }
                    },
          '062B' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0FCD' => {
                      'none' => {
                                  'name' => 'GeForce GT 755M',
                                  'type' => 'legacy'
                                }
                    },
          '0DF1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 420M'
                                }
                    },
          '2237' => {
                      '10DE152F' => {
                                      'name' => 'NVIDIA A10G',
                                      'type' => 'open'
                                    }
                    },
          '0286' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 4200 Go'
                                }
                    },
          '0609' => {
                      '106B00A7' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 8800 GS'
                                    },
                      'none' => {
                                  'name' => 'GeForce 8800M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '2335' => {
                      '10DE18BF' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA H200'
                                    },
                      '10DE18BE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA H200'
                                    }
                    },
          '032B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 500/FX 600'
                                }
                    },
          '13FA' => {
                      '10DE11C9' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro M3000 SE'
                                    },
                      'none' => {
                                  'name' => 'Quadro M3000M',
                                  'type' => 'closed'
                                }
                    },
          '1DB7' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla V100-DGXS-32GB'
                                }
                    },
          '02E2' => {
                      'none' => {
                                  'name' => 'GeForce 7300 GT',
                                  'type' => 'legacy'
                                }
                    },
          '1288' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 720'
                                }
                    },
          '27B1' => {
                      '10DE180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C180C' => {
                                      'name' => 'NVIDIA RTX 4500 Ada Generation',
                                      'type' => 'open'
                                    },
                      '1028180C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 4500 Ada Generation'
                                    }
                    },
          '1618' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 970M',
                                  'type' => 'closed'
                                }
                    },
          '0A6A' => {
                      'none' => {
                                  'name' => 'NVS 2100M',
                                  'type' => 'legacy'
                                }
                    },
          '1059' => {
                      'none' => {
                                  'name' => 'GeForce 610M',
                                  'type' => 'legacy'
                                }
                    },
          '2782' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070 Ti'
                                }
                    },
          '07E0' => {
                      'none' => {
                                  'name' => 'GeForce 7150 / nForce 630i',
                                  'type' => 'legacy'
                                }
                    },
          '1FF2' => {
                      '10DE1613' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T400 4GB'
                                    },
                      '10DE18FF' => {
                                      'name' => 'NVIDIA T400E',
                                      'type' => 'open'
                                    },
                      '10281613' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T400 4GB'
                                    },
                      '103C18FF' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T400E'
                                    },
                      '103C1613' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T400 4GB'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    },
                      '17AA18FF' => {
                                      'name' => 'NVIDIA T400E',
                                      'type' => 'open'
                                    },
                      '17AA1613' => {
                                      'name' => 'NVIDIA T400 4GB',
                                      'type' => 'open'
                                    }
                    },
          '0DD6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 550M'
                                }
                    },
          '0CA7' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 330'
                                }
                    },
          '0FE1' => {
                      'none' => {
                                  'name' => 'GeForce GT 730M',
                                  'type' => 'legacy'
                                }
                    },
          '2191' => {
                      '1043171F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '10280949' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '1462128B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '17AA381D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '146212D9' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '103C87B3' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1462128A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660 Ti',
                                  'type' => 'open'
                                },
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8741' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '104318D1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '146212CB' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C85FE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '146212CC' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '104317EF' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8744' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA380C' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA381E' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '103C86D6' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '103C878D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '103C85FB' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design'
                                    },
                      '14140032' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87AF' => {
                                      'name' => 'NVIDIA GeForce GTX 1660 Ti with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '1C31' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P2200'
                                }
                    },
          '1FB8' => {
                      '103C8736' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T2000 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'Quadro T2000',
                                  'type' => 'open'
                                },
                      '103C8772' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T2000 with Max-Q Design'
                                    },
                      '146212BD' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621281' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C0' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T2000 with Max-Q Design'
                                    },
                      '17AA22C1' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T2000 with Max-Q Design'
                                    },
                      '103C87F0' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T2000 with Max-Q Design'
                                    },
                      '103C8782' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T2000 with Max-Q Design'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8785' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028097E' => {
                                      'name' => 'Quadro T2000 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '084C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'nForce 980a/780a SLI'
                                }
                    },
          '2C19' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '00C8' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 6800'
                                }
                    },
          '0163' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6200 LE'
                                }
                    },
          '15F9' => {
                      'none' => {
                                  'name' => 'Tesla P100-SXM2-16GB',
                                  'type' => 'closed'
                                }
                    },
          '0867' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '1C23' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060',
                                  'type' => 'closed'
                                }
                    },
          '11B4' => {
                      'none' => {
                                  'name' => 'Quadro K4200',
                                  'type' => 'legacy'
                                }
                    },
          '1C61' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti'
                                }
                    },
          '0FFB' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K2000M'
                                }
                    },
          '2236' => {
                      '10DE1482' => {
                                      'name' => 'NVIDIA A10',
                                      'type' => 'open'
                                    }
                    },
          '1BE1' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070',
                                  'type' => 'closed'
                                },
                      '38422009' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '104316F0' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '103C84DB' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    }
                    },
          '02E1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7600 GS'
                                }
                    },
          '2484' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3070'
                                }
                    },
          '1BB6' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P5000'
                                }
                    },
          '1B30' => {
                      'none' => {
                                  'name' => 'Quadro P6000',
                                  'type' => 'closed'
                                }
                    },
          '20B5' => {
                      '10DE1642' => {
                                      'name' => 'NVIDIA A100 80GB PCIe',
                                      'type' => 'open'
                                    },
                      '10DE1533' => {
                                      'name' => 'NVIDIA A100 80GB PCIe',
                                      'type' => 'open'
                                    }
                    },
          '0FEC' => {
                      'none' => {
                                  'name' => 'GeForce 710A',
                                  'type' => 'legacy'
                                }
                    },
          '25AA' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce MX570 A'
                                }
                    },
          '1049' => {
                      'none' => {
                                  'name' => 'GeForce GT 620',
                                  'type' => 'legacy'
                                }
                    },
          '1F02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070',
                                  'type' => 'open'
                                }
                    },
          '087F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'ION LE'
                                }
                    },
          '0DF2' => {
                      'none' => {
                                  'name' => 'GeForce GT 435M',
                                  'type' => 'legacy'
                                }
                    },
          '1B87' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA P104-100'
                                }
                    },
          '06EA' => {
                      'none' => {
                                  'name' => 'Quadro NVS 150M',
                                  'type' => 'legacy'
                                }
                    },
          '1DB6' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla V100-PCIE-32GB'
                                }
                    },
          '0FFF' => {
                      'none' => {
                                  'name' => 'Quadro 410',
                                  'type' => 'legacy'
                                }
                    },
          '1185' => {
                      '10DE106F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GTX 760'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 660'
                                }
                    },
          '0FD8' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 640M'
                                }
                    },
          '02E4' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7950 GT'
                                }
                    },
          '119D' => {
                      'none' => {
                                  'name' => 'GeForce GTX 775M',
                                  'type' => 'legacy'
                                }
                    },
          '0A66' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 310'
                                }
                    },
          '12B9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K610M'
                                }
                    },
          '1D11' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce MX230'
                                }
                    },
          '0DDA' => {
                      'none' => {
                                  'name' => 'Quadro 2000M',
                                  'type' => 'legacy'
                                }
                    },
          '061A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 3700'
                                }
                    },
          '01D1' => {
                      'none' => {
                                  'name' => 'GeForce 7300 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0844' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9100M G'
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
          '019E' => {
                      'none' => {
                                  'name' => 'Quadro FX 4600',
                                  'type' => 'legacy'
                                }
                    },
          '1048' => {
                      'none' => {
                                  'name' => 'GeForce 605',
                                  'type' => 'legacy'
                                }
                    },
          '179C' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940MX',
                                  'type' => 'closed'
                                }
                    },
          '018B' => {
                      'none' => {
                                  'name' => 'Quadro4 380 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '0211' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6800'
                                }
                    },
          '031A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX Go5600'
                                }
                    },
          '0FD9' => {
                      'none' => {
                                  'name' => 'GeForce GT 645M',
                                  'type' => 'legacy'
                                }
                    },
          '1205' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 460 v2'
                                }
                    },
          '0046' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '11BC' => {
                      'none' => {
                                  'name' => 'Quadro K5000M',
                                  'type' => 'legacy'
                                }
                    },
          '1058' => {
                      '17AA3692' => {
                                      'name' => 'GeForce 705A',
                                      'type' => 'legacy'
                                    },
                      '17AA36AC' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800A'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 610M'
                                },
                      '17AA36A8' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '705A3682' => {
                                      'name' => 'GeForce 800A',
                                      'type' => 'legacy'
                                    },
                      '17AA3695' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800A'
                                    },
                      '17AA3682' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800A'
                                    },
                      '17AA36AD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800A'
                                    },
                      '103C2AF1' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 610'
                                    }
                    },
          '0393' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7300 GT'
                                }
                    },
          '1619' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 965M'
                                }
                    },
          '1FB9' => {
                      '103C8736' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'name' => 'Quadro T1000',
                                  'type' => 'open'
                                },
                      '103C8772' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '1025147C' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212BD' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C0' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C1' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '103C87F0' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '103C8782' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8783' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8780' => {
                                      'name' => 'Quadro T1000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251479' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '103C8785' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '1025147A' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    },
                      '1025147B' => {
                                      'type' => 'open',
                                      'name' => 'Quadro T1000 with Max-Q Design'
                                    }
                    },
          '0FE4' => {
                      'none' => {
                                  'name' => 'GeForce GT 750M',
                                  'type' => 'legacy'
                                }
                    },
          '01DC' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 350M'
                                }
                    },
          '2331' => {
                      '10DE1626' => {
                                      'name' => 'NVIDIA H100 PCIe',
                                      'type' => 'open'
                                    }
                    },
          '25A6' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce MX570'
                                }
                    },
          '20B2' => {
                      '10DE1463' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A100-SXM4-80GB'
                                    },
                      '10DE1625' => {
                                      'name' => 'NVIDIA PG509-210',
                                      'type' => 'open'
                                    },
                      '10DE147F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A100-SXM4-80GB'
                                    },
                      '10DE1623' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A100-SXM4-80GB'
                                    },
                      '10DE1622' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A100-SXM4-80GB'
                                    }
                    },
          '0170' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 460',
                                  'type' => 'legacy'
                                }
                    },
          '15F8' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla P100-PCIE-16GB'
                                }
                    },
          '28A3' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 A Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2C18' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5090 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0DF5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 525M'
                                }
                    },
          '00C9' => {
                      'none' => {
                                  'name' => 'GeForce Go 6800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '1DBA' => {
                      '10DE12EB' => {
                                      'name' => 'NVIDIA TITAN V JHH Special Edition',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro GV100'
                                }
                    },
          '06E6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce G100'
                                }
                    },
          '1193' => {
                      'none' => {
                                  'name' => 'GeForce GTX 760 Ti OEM',
                                  'type' => 'legacy'
                                }
                    },
          '0423' => {
                      'none' => {
                                  'name' => 'GeForce 8300 GS',
                                  'type' => 'legacy'
                                }
                    },
          '28BA' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 500 Ada Generation Laptop GPU'
                                }
                    },
          '0308' => {
                      'none' => {
                                  'name' => 'Quadro FX 2000',
                                  'type' => 'legacy'
                                }
                    },
          '2709' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070'
                                }
                    },
          '220D' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA CMP 90HX'
                                }
                    },
          '0212' => {
                      'none' => {
                                  'name' => 'GeForce 6800 LE',
                                  'type' => 'legacy'
                                }
                    },
          '0DF4' => {
                      '152D0953' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '152D0952' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 540M'
                                }
                    },
          '124D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 555M'
                                },
                      '146210CC' => {
                                      'name' => 'GeForce GT 635M',
                                      'type' => 'legacy'
                                    }
                    },
          '0A67' => {
                      'none' => {
                                  'name' => 'GeForce 315',
                                  'type' => 'legacy'
                                }
                    },
          '13BB' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro K620'
                                }
                    },
          '0640' => {
                      'none' => {
                                  'name' => 'GeForce 9500 GT',
                                  'type' => 'legacy'
                                }
                    },
          '24B1' => {
                      '10DE1658' => {
                                      'name' => 'NVIDIA RTX A4000H',
                                      'type' => 'open'
                                    }
                    },
          '0047' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '2482' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti',
                                  'type' => 'open'
                                }
                    },
          '0608' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9800M GTX'
                                }
                    },
          '01D2' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7550 LE'
                                }
                    },
          '086A' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '1D12' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX150',
                                  'type' => 'closed'
                                }
                    },
          '1140' => {
                      '1028064E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1025077D' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '102805E8' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '104316CD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '144DC737' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '10438661' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438643' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA369C' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '1043124D' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043235A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA500D' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA3800' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '144DB092' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '10438652' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '144DC0E3' => {
                                      'type' => 'legacy',
                                      'name' => 'NVS 5200M'
                                    },
                      '17AA30E4' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '10250830' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '104385EC' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '152D1012' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA3818' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1043861B' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '152D1055' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '144DC652' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA36A6' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '1043126D' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043227A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '102806C1' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1179FA59' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA361D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '1025079C' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043221A' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025089B' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250881' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104310DD' => {
                                      'type' => 'legacy',
                                      'name' => 'NVS 5200M'
                                    },
                      '1043861A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '103C18FB' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '17AA3696' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '1179FA02' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '102806B0' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA381D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1179FA88' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '10250728' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA3806' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3913' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C2210' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1179FA01' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1B6C5031' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '1179FA49' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '18540180' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1B0A2202' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '1028054E' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '1025077B' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250763' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250725' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1043176D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1043131D' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA5019' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA381A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA5005' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 705M'
                                    },
                      '10250837' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '103C21BB' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '104385F3' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250799' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1179FA03' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10432136' => {
                                      'type' => 'legacy',
                                      'name' => 'NVS 5200M'
                                    },
                      '17AA36A9' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '10280595' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '17AA3912' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025072B' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA5030' => {
                                      'name' => 'GeForce 705M',
                                      'type' => 'legacy'
                                    },
                      '10190799' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA361B' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '1028065E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA5027' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1025077A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '102806AD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1B0A210E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025092E' => {
                                      'name' => 'GeForce 810M',
                                      'type' => 'legacy'
                                    },
                      '10438628' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA36A7' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '144DC0E2' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '144DC736' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1043223A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 710M'
                                    },
                      '144DC0E4' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '1179FA47' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA5017' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1043236A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '103C22D9' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA3661' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '103C18FD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '10280554' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '10250853' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1179FA58' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA36B0' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '1B0A20DD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1179FA23' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '18540192' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043178D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250719' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA5025' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA3817' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '104385EA' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '152D1067' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1179FA11' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '102805DA' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '10250932' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10438595' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3904' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625M'
                                    },
                      '17AA502B' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043165D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250878' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025079B' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1179FA21' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '103C2AEF' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720A'
                                    },
                      '103C226F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250781' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3902' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1179FA45' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA2213' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '10250600' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '105B0EF3' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '104311FD' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1179FA13' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1179FA89' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '10250606' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '10280653' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '144DC709' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1179FA32' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250965' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104385EB' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA501A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA502A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1043238A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10280662' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA36B6' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '17AA369B' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '17AA30B4' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '1462ACC1' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '103C2AF9' => {
                                      'name' => 'GeForce 710A',
                                      'type' => 'legacy'
                                    },
                      '10250945' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025092F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1BAB0106' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250921' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1019999F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '152D1092' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10280652' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1025067A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1179FA33' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '18540224' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250807' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250776' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '17AA381C' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102805E0' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '146210E9' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1B505530' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA502D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '103C18EF' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '146210B8' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 710M'
                                    },
                      '17AA3808' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA361C' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '17AA365E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800M'
                                    },
                      '1043220A' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3901' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 610M'
                                    },
                      '104314C7' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1462AE61' => {
                                      'name' => 'GeForce 720M',
                                      'type' => 'legacy'
                                    },
                      '1043166D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250854' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C21BC' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1025068E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '103C2218' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3816' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250798' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '1025087B' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250841' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10250863' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA380D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 820M'
                                    },
                      '10280562' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625M'
                                    },
                      '1025077C' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA3903' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '104321BA' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '144DC10D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '103C18F9' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '104310ED' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '1025093F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '102805F4' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10280590' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '17AA369D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820A'
                                    },
                      '1025093C' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '152D0983' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '17AA5001' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 610M'
                                    },
                      '1028068D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3687' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 705A'
                                    },
                      '104315AD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '104315ED' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '18540190' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '17AA502E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '10250694' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1025077F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1179FA19' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '10250692' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '1179FA05' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1179FA36' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA5003' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025064C' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '104313FD' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250773' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA3813' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA369E' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '10250857' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1462ACB2' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10250732' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA380E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 820M'
                                    },
                      '103C2337' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1025068D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '144DC750' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1025083E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA3811' => {
                                      'name' => 'GeForce GT 820M',
                                      'type' => 'legacy'
                                    },
                      '102805DE' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '104385EE' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '1043232A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3812' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10280557' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA503E' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1025088A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1043860E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250856' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3907' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '102805A2' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625M'
                                    },
                      '1028060F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1B0A90DD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '152D0926' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 620M'
                                    },
                      '10250869' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 810M'
                                    },
                      '152D0982' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '102806AF' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043224A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 710M'
                                    },
                      '105B0DAC' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1B0A01C0' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA365A' => {
                                      'name' => 'GeForce 705M',
                                      'type' => 'legacy'
                                    },
                      '1462AA33' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 720M'
                                    },
                      '17AA2220' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '103C18FF' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '17AA3686' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800M'
                                    },
                      '1043160D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA5040' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250691' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1043233A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10280592' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625M'
                                    },
                      '1025068B' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA3915' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA30B7' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 720A'
                                    },
                      '144DC0D7' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '104322FA' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10280594' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625M'
                                    },
                      '10250885' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250774' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1028062F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '17AA366C' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800M'
                                    },
                      '1462AE6A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1025064A' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA5033' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '104316DD' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3802' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '103C22D2' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10431507' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1B0A20DF' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '17AA3804' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '102805B1' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 625M'
                                    },
                      '17AA5031' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 705M'
                                    },
                      '105B0DAD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '17AA503F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '102805B3' => {
                                      'name' => 'GeForce GT 625M',
                                      'type' => 'legacy'
                                    },
                      '103C226D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '18540177' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1028054D' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '144DC0D5' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '1025093A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250873' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10280568' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '14621116' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '103C225B' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250821' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1179FA18' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '1462AAA2' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3983' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 610M'
                                    },
                      '1462AE65' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '17AA3905' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '1179FA42' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '17AA309C' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720A'
                                    },
                      '1D051013' => {
                                      'name' => 'GeForce 810M',
                                      'type' => 'legacy'
                                    },
                      '1462AE71' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '103C218A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250823' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1025087F' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250858' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '102806AE' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1043228A' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250702' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '10250689' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '103C2212' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA5014' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '17AA2200' => {
                                      'name' => 'NVS 5200M',
                                      'type' => 'legacy'
                                    },
                      '103C2214' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1043179D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '10250855' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250868' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '152D1030' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 630M'
                                    },
                      '1025072E' => {
                                      'name' => 'GeForce GT 620M',
                                      'type' => 'legacy'
                                    },
                      '17AA501F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '17AA3656' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1462AAA3' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '103C2335' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250680' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '1179FA43' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '10280565' => {
                                      'name' => 'GeForce GT 630M',
                                      'type' => 'legacy'
                                    },
                      '102806C0' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '103C220E' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA502F' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '10CF17F5' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA3910' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1043170D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA36AF' => {
                                      'name' => 'GeForce 820A',
                                      'type' => 'legacy'
                                    },
                      '1025077E' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '1043163D' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '17AA3685' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 800M'
                                    },
                      '10280655' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '152D1019' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '17AA5032' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1043864C' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '1B0A90D7' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '103C225D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10432132' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 620M'
                                    },
                      '17AA3803' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '10250941' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '14C00083' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '144DC711' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '10250833' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '1179FA2A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '144DC745' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '1179FA38' => {
                                      'name' => 'GeForce 710M',
                                      'type' => 'legacy'
                                    },
                      '104321FA' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 720M'
                                    },
                      '10250686' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 710M'
                                    },
                      '10438660' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 820M'
                                    },
                      '10250954' => {
                                      'name' => 'GeForce 820M',
                                      'type' => 'legacy'
                                    },
                      '152D1005' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 820M'
                                    },
                      '17AA3801' => {
                                      'name' => 'GeForce GT 720M',
                                      'type' => 'legacy'
                                    },
                      '17AA380F' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 820M'
                                    }
                    },
          '1289' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 710'
                                }
                    },
          '002D' => {
                      'none' => {
                                  'name' => 'RIVA TNT2 Model 64/Model 64 Pro',
                                  'type' => 'legacy'
                                }
                    },
          '25A7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '1094' => {
                      'none' => {
                                  'name' => 'Tesla M2075',
                                  'type' => 'legacy'
                                }
                    },
          '249D' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3070 Laptop GPU'
                                }
                    },
          '06F8' => {
                      'none' => {
                                  'name' => 'Quadro NVS 420',
                                  'type' => 'legacy'
                                }
                    },
          '06DF' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla M2070-Q'
                                }
                    },
          '2717' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2203' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3090 Ti'
                                }
                    },
          '0845' => {
                      'none' => {
                                  'name' => 'GeForce 8200M G',
                                  'type' => 'legacy'
                                }
                    },
          '06E7' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9300 SE'
                                }
                    },
          '01A0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce2 Integrated GPU'
                                }
                    },
          '1243' => {
                      'none' => {
                                  'name' => 'GeForce GT 545',
                                  'type' => 'legacy'
                                }
                    },
          '042D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 360M'
                                }
                    },
          '042B' => {
                      'none' => {
                                  'name' => 'Quadro NVS 135M',
                                  'type' => 'legacy'
                                }
                    },
          '0610' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600 GSO'
                                }
                    },
          '1CB1' => {
                      'none' => {
                                  'name' => 'Quadro P1000',
                                  'type' => 'closed'
                                }
                    },
          '1C82' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '27E0' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4080 Laptop GPU'
                                }
                    },
          '1022' => {
                      'none' => {
                                  'name' => 'Tesla K20c',
                                  'type' => 'legacy'
                                }
                    },
          '0334' => {
                      'none' => {
                                  'name' => 'GeForce FX 5900ZT',
                                  'type' => 'legacy'
                                }
                    },
          '0191' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8800 GTX'
                                }
                    },
          '06DD' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 4000'
                                }
                    },
          '0DC5' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '00F9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6800 Ultra'
                                }
                    },
          '10C0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9300 GS'
                                }
                    },
          '01DE' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 350'
                                }
                    },
          '13B3' => {
                      'none' => {
                                  'name' => 'Quadro K2200M',
                                  'type' => 'closed'
                                }
                    },
          '0409' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8700M GT'
                                }
                    },
          '2757' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4090 Laptop GPU'
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
          '129A' => {
                      'none' => {
                                  'name' => 'GeForce 910M',
                                  'type' => 'legacy'
                                }
                    },
          '0242' => {
                      'none' => {
                                  'name' => 'GeForce 6100',
                                  'type' => 'legacy'
                                }
                    },
          '100A' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '042F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro NVS 290'
                                }
                    },
          '11BE' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K3000M'
                                }
                    },
          '1BB0' => {
                      'none' => {
                                  'name' => 'Quadro P5000',
                                  'type' => 'closed'
                                }
                    },
          '1CBC' => {
                      'none' => {
                                  'name' => 'Quadro P600',
                                  'type' => 'closed'
                                }
                    },
          '1213' => {
                      'none' => {
                                  'name' => 'GeForce GTX 670M',
                                  'type' => 'legacy'
                                }
                    },
          '017A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 400',
                                  'type' => 'legacy'
                                }
                    },
          '2230' => {
                      '10DE1459' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A6000'
                                    },
                      '10281459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    },
                      '103C1459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    },
                      '17AA1459' => {
                                      'name' => 'NVIDIA RTX A6000',
                                      'type' => 'open'
                                    }
                    },
          '0A73' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 305M'
                                },
                      '17AA3607' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      '17AA3610' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    }
                    },
          '139C' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 940M'
                                }
                    },
          '2685' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090 D',
                                  'type' => 'open'
                                }
                    },
          '0A28' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 230M'
                                }
                    },
          '124B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 640'
                                }
                    },
          '0299' => {
                      'none' => {
                                  'name' => 'Quadro NVS 510M',
                                  'type' => 'legacy'
                                }
                    },
          '25FA' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A2000 Embedded GPU'
                                }
                    },
          '137A' => {
                      '17AA505A' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro M500M'
                                    },
                      '17AA2232' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro M500M'
                                    },
                      '17AA2225' => {
                                      'name' => 'Quadro K620M',
                                      'type' => 'closed'
                                    }
                    },
          '1D52' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX250',
                                  'type' => 'closed'
                                }
                    },
          '2563' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU'
                                }
                    },
          '0241' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6150 LE'
                                }
                    },
          '1E36' => {
                      'none' => {
                                  'name' => 'Quadro RTX 6000',
                                  'type' => 'open'
                                }
                    },
          '1EB0' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'Quadro RTX 5000'
                                }
                    },
          '2684' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4090',
                                  'type' => 'open'
                                }
                    },
          '1392' => {
                      '1043861E' => {
                                      'name' => 'NVIDIA GeForce GTX 750 Ti',
                                      'type' => 'closed'
                                    },
                      '104386D9' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 750 Ti'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 860M',
                                  'type' => 'closed'
                                },
                      '1028066A' => {
                                      'name' => 'NVIDIA GeForce GPU',
                                      'type' => 'closed'
                                    }
                    },
          '28B0' => {
                      '17AA1870' => {
                                      'name' => 'NVIDIA RTX 2000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA1871' => {
                                      'name' => 'NVIDIA RTX 2000E Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE1871' => {
                                      'name' => 'NVIDIA RTX 2000E Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE1870' => {
                                      'name' => 'NVIDIA RTX 2000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10281870' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 2000 Ada Generation'
                                    },
                      '103C1871' => {
                                      'name' => 'NVIDIA RTX 2000E Ada Generation',
                                      'type' => 'open'
                                    },
                      '103C1870' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 2000 Ada Generation'
                                    }
                    },
          '0CA0' => {
                      'none' => {
                                  'name' => 'GeForce GT 330',
                                  'type' => 'legacy'
                                }
                    },
          '2521' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0860' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9400'
                                }
                    },
          '0183' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 MX 420 with AGP8X'
                                }
                    },
          '2C58' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 5090 Laptop GPU'
                                }
                    },
          '1021' => {
                      'none' => {
                                  'name' => 'Tesla K20Xm',
                                  'type' => 'legacy'
                                }
                    },
          '064A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9700M GT'
                                }
                    },
          '1C81' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '11C8' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 650'
                                }
                    },
          '1CB2' => {
                      'none' => {
                                  'name' => 'Quadro P600',
                                  'type' => 'closed'
                                }
                    },
          '0635' => {
                      'none' => {
                                  'name' => 'GeForce 9600 GSO',
                                  'type' => 'legacy'
                                }
                    },
          '119F' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780M',
                                  'type' => 'legacy'
                                }
                    },
          '1349' => {
                      '17AA364B' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 930A'
                                    },
                      '17AA36D1' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 930A'
                                    },
                      '17AA3124' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA36D8' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA36C3' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 930A'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 930M'
                                }
                    },
          '24DD' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '26B5' => {
                      '10DE169D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA L40'
                                    },
                      '10DE17DA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA L40'
                                    }
                    },
          '065A' => {
                      'none' => {
                                  'name' => 'Quadro FX 1700M',
                                  'type' => 'legacy'
                                }
                    },
          '0251' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 Ti 4400'
                                }
                    },
          '0DC4' => {
                      'none' => {
                                  'name' => 'GeForce GTS 450',
                                  'type' => 'legacy'
                                }
                    },
          '0280' => {
                      'none' => {
                                  'name' => 'GeForce4 Ti 4800',
                                  'type' => 'legacy'
                                }
                    },
          '118E' => {
                      'none' => {
                                  'name' => 'GeForce GTX 760 (192-bit)',
                                  'type' => 'legacy'
                                }
                    },
          '0149' => {
                      'none' => {
                                  'name' => 'GeForce Go 6600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '1C8C' => {
                      '17AA2267' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design'
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
                      '1028087C' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design'
                                    },
                      '1462126C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti'
                                },
                      '17AA39FF' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2266' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design'
                                    }
                    },
          '1B80' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1080'
                                }
                    },
          '1348' => {
                      '103C2B5C' => {
                                      'name' => 'NVIDIA GeForce 945A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 945M'
                                }
                    },
          '1C09' => {
                      'none' => {
                                  'name' => 'NVIDIA P106-090',
                                  'type' => 'closed'
                                }
                    },
          '009D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 4500'
                                }
                    },
          '2507' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050'
                                }
                    },
          '087D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'ION'
                                }
                    },
          '24E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1007' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780',
                                  'type' => 'legacy'
                                }
                    },
          '0100' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 256'
                                }
                    },
          '0646' => {
                      'none' => {
                                  'name' => 'GeForce GT 120',
                                  'type' => 'legacy'
                                }
                    },
          '108B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 580'
                                }
                    },
          '0148' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 6600'
                                }
                    },
          '0FFD' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'NVS 510'
                                }
                    },
          '0F03' => {
                      'none' => {
                                  'name' => 'GeForce GT 610',
                                  'type' => 'legacy'
                                }
                    },
          '0632' => {
                      'none' => {
                                  'name' => 'GeForce GTS 150M',
                                  'type' => 'legacy'
                                }
                    },
          '01F0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 MX Integrated GPU'
                                }
                    },
          '0244' => {
                      'none' => {
                                  'name' => 'GeForce Go 6150',
                                  'type' => 'legacy'
                                }
                    },
          '26B2' => {
                      '103C17FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '17AA17FA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 5000 Ada Generation'
                                    },
                      '102817FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE17FA' => {
                                      'name' => 'NVIDIA RTX 5000 Ada Generation',
                                      'type' => 'open'
                                    }
                    },
          '0873' => {
                      '10431C52' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce G205M'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce G102M'
                                }
                    },
          '0177' => {
                      'none' => {
                                  'name' => 'GeForce4 460 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0656' => {
                      '106B0693' => {
                                      'name' => 'GeForce GT 120',
                                      'type' => 'legacy'
                                    }
                    },
          '0332' => {
                      'none' => {
                                  'name' => 'GeForce FX 5900XT',
                                  'type' => 'legacy'
                                }
                    },
          '0093' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '1024' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K40c'
                                }
                    },
          '0203' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro DCC'
                                }
                    },
          '2C59' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 5080 Laptop GPU'
                                }
                    },
          '1407' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 750'
                                }
                    },
          '1F97' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX450',
                                  'type' => 'open'
                                }
                    },
          '13F0' => {
                      'none' => {
                                  'name' => 'Quadro M5000',
                                  'type' => 'closed'
                                }
                    },
          '0347' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX Go5700'
                                }
                    },
          '0DE3' => {
                      'none' => {
                                  'name' => 'GeForce GT 635M',
                                  'type' => 'legacy'
                                }
                    },
          '032D' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5100',
                                  'type' => 'legacy'
                                }
                    },
          '21D1' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce GTX 1660 Ti'
                                }
                    },
          '0A60' => {
                      'none' => {
                                  'name' => 'GeForce G210',
                                  'type' => 'legacy'
                                }
                    },
          '0FEE' => {
                      'none' => {
                                  'name' => 'GeForce 810M',
                                  'type' => 'legacy'
                                }
                    },
          '0298' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 7900 GS'
                                }
                    },
          '053B' => {
                      'none' => {
                                  'name' => 'GeForce 7050 PV / nForce 630a',
                                  'type' => 'legacy'
                                }
                    },
          '0647' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600M GT'
                                }
                    },
          '0040' => {
                      'none' => {
                                  'name' => 'GeForce 6800 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '0A29' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 330M'
                                }
                    },
          '24C9' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti'
                                }
                    },
          '0245' => {
                      'none' => {
                                  'name' => 'Quadro NVS 210S / GeForce 6150LE',
                                  'type' => 'legacy'
                                }
                    },
          '1296' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 825M'
                                }
                    },
          '062D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600 GT'
                                }
                    },
          '25BB' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A500 Laptop GPU'
                                }
                    },
          '2803' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4060 Ti'
                                }
                    },
          '0623' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600 GS'
                                }
                    },
          '25A0' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU'
                                },
                      '103C8928' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 3050Ti Laptop GPU'
                                    },
                      '1D051196' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      '103C89F9' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 3050Ti Laptop GPU'
                                    }
                    },
          '0176' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 420 Go 32M'
                                }
                    },
          '00F8' => {
                      'none' => {
                                  'name' => 'Quadro FX 3400/Quadro FX 4000',
                                  'type' => 'legacy'
                                }
                    },
          '0331' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5900'
                                }
                    },
          '0194' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8800 Ultra'
                                }
                    },
          '0408' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9650M GS'
                                }
                    },
          '0323' => {
                      'none' => {
                                  'name' => 'GeForce FX 5200LE',
                                  'type' => 'legacy'
                                }
                    },
          '08A3' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '06E0' => {
                      'none' => {
                                  'name' => 'GeForce 9300 GE',
                                  'type' => 'legacy'
                                }
                    },
          '26B1' => {
                      '102816A1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 6000 Ada Generation'
                                    },
                      '17AA16A1' => {
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
                                    }
                    },
          '1F96' => {
                      '14621297' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce GTX 1650'
                                }
                    },
          '1406' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 960',
                                  'type' => 'closed'
                                }
                    },
          '0631' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTS 160M'
                                }
                    },
          '11E0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 770M',
                                  'type' => 'legacy'
                                }
                    },
          '0DED' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 520M'
                                }
                    },
          '1BB9' => {
                      'none' => {
                                  'name' => 'Quadro P4200',
                                  'type' => 'closed'
                                },
                      '155895E1' => {
                                      'name' => 'Quadro P4200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2269' => {
                                      'name' => 'Quadro P4200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA2268' => {
                                      'name' => 'Quadro P4200 with Max-Q Design',
                                      'type' => 'closed'
                                    }
                    },
          '13BC' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro K1200'
                                }
                    },
          '0A71' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 305M'
                                }
                    },
          '019D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 5600'
                                }
                    },
          '06D1' => {
                      '10DE0772' => {
                                      'name' => 'Tesla C2070',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla C2050 / C2070',
                                  'type' => 'legacy'
                                },
                      '10DE0771' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla C2050'
                                    }
                    },
          '1FBA' => {
                      'none' => {
                                  'name' => 'NVIDIA T600 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '118F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K10'
                                }
                    },
          '038B' => {
                      'none' => {
                                  'name' => 'GeForce 7650 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0A68' => {
                      'none' => {
                                  'name' => 'GeForce G105M',
                                  'type' => 'legacy'
                                }
                    },
          '161A' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980',
                                  'type' => 'closed'
                                }
                    },
          '1CBD' => {
                      'none' => {
                                  'name' => 'Quadro P620',
                                  'type' => 'closed'
                                }
                    },
          '039E' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 560'
                                }
                    },
          '1E04' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080 Ti',
                                  'type' => 'open'
                                }
                    },
          '119E' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 780M'
                                }
                    },
          '0290' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7900 GTX'
                                }
                    },
          '0DE4' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 520'
                                }
                    },
          '0607' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTS 240'
                                }
                    },
          '03D1' => {
                      'none' => {
                                  'name' => 'GeForce 6100 nForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '1211' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 580M'
                                }
                    },
          '0048' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
                                }
                    },
          '0095' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7800 SLI'
                                }
                    },
          '139D' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 750 Ti',
                                  'type' => 'closed'
                                }
                    },
          '0A38' => {
                      'none' => {
                                  'name' => 'Quadro 400',
                                  'type' => 'legacy'
                                }
                    },
          '24A0' => {
                      '1D051192' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti Laptop GPU'
                                }
                    },
          '1382' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 745'
                                }
                    },
          '06DC' => {
                      'none' => {
                                  'name' => 'Quadro 6000',
                                  'type' => 'legacy'
                                }
                    },
          '20F6' => {
                      '10DE180A' => {
                                      'name' => 'NVIDIA A800 40GB Active',
                                      'type' => 'open'
                                    },
                      '1028180A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A800 40GB Active'
                                    },
                      '103C180A' => {
                                      'name' => 'NVIDIA A800 40GB Active',
                                      'type' => 'open'
                                    },
                      '17AA180A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A800 40GB Active'
                                    }
                    },
          '08A4' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 320M'
                                }
                    },
          '0324' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5200',
                                  'type' => 'legacy'
                                }
                    },
          '0A7C' => {
                      'none' => {
                                  'name' => 'Quadro FX 380M',
                                  'type' => 'legacy'
                                }
                    },
          '0619' => {
                      'none' => {
                                  'name' => 'Quadro FX 4700 X2',
                                  'type' => 'legacy'
                                }
                    },
          '1393' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 840M',
                                  'type' => 'closed'
                                }
                    },
          '24BB' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A3000 12GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '13B1' => {
                      'none' => {
                                  'name' => 'Quadro M1000M',
                                  'type' => 'closed'
                                }
                    },
          '12BA' => {
                      'none' => {
                                  'name' => 'Quadro K510M',
                                  'type' => 'legacy'
                                }
                    },
          '05E7' => {
                      '10DE0595' => {
                                      'name' => 'Tesla T10 Processor',
                                      'type' => 'legacy'
                                    },
                      '10DE0714' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla M1060'
                                    },
                      '10DE068F' => {
                                      'name' => 'Tesla T10 Processor',
                                      'type' => 'legacy'
                                    },
                      '10DE0743' => {
                                      'name' => 'Tesla M1060',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla C1060'
                                },
                      '10DE0697' => {
                                      'name' => 'Tesla M1060',
                                      'type' => 'legacy'
                                    }
                    },
          '1056' => {
                      'none' => {
                                  'name' => 'NVS 4200M',
                                  'type' => 'legacy'
                                }
                    },
          '0400' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8600 GTS'
                                }
                    },
          '1CB3' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P400'
                                }
                    },
          '06E8' => {
                      '103C360B' => {
                                      'name' => 'GeForce 9200M GE',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9200M GS'
                                }
                    },
          '1C91' => {
                      '152D1232' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C86E3' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C856A' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1050'
                                }
                    },
          '05F8' => {
                      'none' => {
                                  'name' => 'Quadroplex 2200 S4',
                                  'type' => 'legacy'
                                }
                    },
          '1E89' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '0193' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GTS',
                                  'type' => 'legacy'
                                }
                    },
          '1F11' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2060'
                                }
                    },
          '0182' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 MX 440SE with AGP8X'
                                }
                    },
          '2348' => {
                      '10DE18D2' => {
                                      'name' => 'NVIDIA GH200 144G HBM3e',
                                      'type' => 'open'
                                    }
                    },
          '0253' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 Ti 4200'
                                }
                    },
          '1340' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 830M'
                                },
                      '103C2B2B' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 830A'
                                    }
                    },
          '24DC' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3080 Laptop GPU'
                                }
                    },
          '018C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro NVS 50 PCI'
                                }
                    },
          '03D2' => {
                      'none' => {
                                  'name' => 'GeForce 6100 nForce 400',
                                  'type' => 'legacy'
                                }
                    },
          '1212' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 675M'
                                }
                    },
          '0625' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600 GSO 512'
                                }
                    },
          '1EF5' => {
                      'none' => {
                                  'name' => 'Quadro RTX 5000',
                                  'type' => 'open'
                                }
                    },
          '1C8D' => {
                      '10431B5E' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '103C84E9' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                },
                      '152D1217' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1D721707' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '104314A1' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C84EB' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '103C856A' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '10431351' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '104318C1' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '1462126C' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '10431481' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1043114F' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431341' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    }
                    },
          '11BF' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GRID K2'
                                }
                    },
          '06D2' => {
                      'none' => {
                                  'name' => 'Tesla M2070',
                                  'type' => 'legacy'
                                },
                      '10DE088F' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla X2070'
                                    }
                    },
          '1431' => {
                      'none' => {
                                  'name' => 'Tesla M4',
                                  'type' => 'closed'
                                }
                    },
          '233B' => {
                      '10DE1996' => {
                                      'name' => 'NVIDIA H200 NVL',
                                      'type' => 'open'
                                    }
                    },
          '102D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K80'
                                }
                    },
          '0289' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro4 780 XGL'
                                }
                    },
          '0140' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6600 GT'
                                }
                    },
          '103C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K5200'
                                }
                    },
          '0325' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX Go5250'
                                }
                    },
          '0A72' => {
                      'none' => {
                                  'name' => 'GeForce 310M',
                                  'type' => 'legacy'
                                }
                    },
          '0606' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '08A5' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '0181' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 440 with AGP8X',
                                  'type' => 'legacy'
                                }
                    },
          '01DF' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7300 GS'
                                }
                    },
          '2531' => {
                      '10DE151D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A2000'
                                    },
                      '1028151D' => {
                                      'name' => 'NVIDIA RTX A2000',
                                      'type' => 'open'
                                    },
                      '103C151D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A2000'
                                    },
                      '17AA151D' => {
                                      'name' => 'NVIDIA RTX A2000',
                                      'type' => 'open'
                                    }
                    },
          '17C8' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 980 Ti'
                                }
                    },
          '05E6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 275'
                                }
                    },
          '1F12' => {
                      '103C8741' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8744' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                },
                      '10431E11' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design'
                                    },
                      '1028098F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design'
                                    },
                      '17AA3801' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3803' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878E' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design'
                                    },
                      '10431F11' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design'
                                    },
                      '17AA3802' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design'
                                    },
                      '103C880E' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212D9' => {
                                      'name' => 'NVIDIA GeForce RTX 2060 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '1057' => {
                      'none' => {
                                  'name' => 'NVS 4200M',
                                  'type' => 'legacy'
                                }
                    },
          '1023' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K40m'
                                }
                    },
          '0150' => {
                      'none' => {
                                  'name' => 'GeForce2 GTS/GeForce2 Pro',
                                  'type' => 'legacy'
                                }
                    },
          '0DE5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 530'
                                }
                    },
          '0CA9' => {
                      'none' => {
                                  'name' => 'GeForce GTS 250M',
                                  'type' => 'legacy'
                                }
                    },
          '28B9' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 1000 Ada Generation Laptop GPU'
                                }
                    },
          '1C83' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1050'
                                }
                    },
          '25E0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '042E' => {
                      'none' => {
                                  'name' => 'GeForce 9300M G',
                                  'type' => 'legacy'
                                }
                    },
          '1C92' => {
                      '14621245' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10431B31' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                },
                      '1043149F' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    },
                      '1462126C' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 with Max-Q Design'
                                    }
                    },
          '2805' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4060 Ti'
                                }
                    },
          '15F7' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla P100-PCIE-12GB'
                                }
                    },
          '0869' => {
                      'none' => {
                                  'name' => 'GeForce 9400',
                                  'type' => 'legacy'
                                }
                    },
          '11A0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 680M'
                                }
                    },
          '1E90' => {
                      '155895E1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C86C6' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C8573' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '1A583001' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '152D1220' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043137F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EC' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043141F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028093B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C8602' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '145875A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582005' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581661' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '1A582007' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043131F' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808A2' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '1A582002' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C87A6' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '102808EE' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155897E1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D051069' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '1A583000' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C8606' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C86C7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251375' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EB' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C87A7' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '14581660' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '1028093C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '10431751' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581662' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808A1' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621274' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2080'
                                },
                      '14621277' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '145875A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '13B2' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro M600M'
                                }
                    },
          '2523' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 Ti Laptop GPU'
                                }
                    },
          '01DB' => {
                      'none' => {
                                  'name' => 'Quadro NVS 120M',
                                  'type' => 'legacy'
                                }
                    },
          '0874' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'ION'
                                }
                    },
          '1381' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 750'
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
          '0201' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce3 Ti 200'
                                }
                    },
          '0091' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '084F' => {
                      'none' => {
                                  'name' => 'GeForce 8100 / nForce 720a',
                                  'type' => 'legacy'
                                }
                    },
          '0E30' => {
                      'none' => {
                                  'name' => 'GeForce GTX 470M',
                                  'type' => 'legacy'
                                }
                    },
          '1617' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 980M',
                                  'type' => 'closed'
                                }
                    },
          '1FB7' => {
                      'none' => {
                                  'name' => 'NVIDIA T550 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1EB8' => {
                      '10DE12A2' => {
                                      'name' => 'Tesla T4'
                                    }
                    },
          '03D5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6100 nForce 420'
                                }
                    },
          '27A0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4080 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0622' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600 GT'
                                }
                    },
          '0CA8' => {
                      'none' => {
                                  'name' => 'GeForce GTS 260M',
                                  'type' => 'legacy'
                                }
                    },
          '28B8' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 2000 Ada Generation Laptop GPU'
                                }
                    },
          '1D01' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GT 1030'
                                }
                    },
          '0868' => {
                      'none' => {
                                  'name' => 'nForce 760i SLI',
                                  'type' => 'legacy'
                                }
                    },
          '06C0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 480'
                                }
                    },
          '0871' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9200'
                                }
                    },
          '0DCD' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
                                  'type' => 'legacy'
                                }
                    },
          '11C0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 660'
                                }
                    },
          '13F9' => {
                      'none' => {
                                  'name' => 'Quadro M4000M',
                                  'type' => 'closed'
                                }
                    },
          '0322' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5200'
                                }
                    },
          '08A2' => {
                      'none' => {
                                  'name' => 'GeForce 320M',
                                  'type' => 'legacy'
                                }
                    },
          '0A75' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 310M'
                                },
                      '17AA3605' => {
                                      'type' => 'legacy',
                                      'name' => 'Second Generation ION'
                                    }
                    },
          '060A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 280M'
                                }
                    },
          '084B' => {
                      'none' => {
                                  'name' => 'GeForce 9200',
                                  'type' => 'legacy'
                                }
                    },
          '0FEF' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GRID K340'
                                }
                    },
          '06FA' => {
                      'none' => {
                                  'name' => 'Quadro NVS 450',
                                  'type' => 'legacy'
                                }
                    },
          '05EA' => {
                      'none' => {
                                  'name' => 'GeForce GTX 260',
                                  'type' => 'legacy'
                                }
                    },
          '1F15' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2060'
                                }
                    },
          '11FA' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K4000'
                                }
                    },
          '0DE2' => {
                      'none' => {
                                  'name' => 'GeForce GT 420',
                                  'type' => 'legacy'
                                }
                    },
          '0F01' => {
                      'none' => {
                                  'name' => 'GeForce GT 620',
                                  'type' => 'legacy'
                                }
                    },
          '0FFC' => {
                      'none' => {
                                  'name' => 'Quadro K1000M',
                                  'type' => 'legacy'
                                }
                    },
          '1286' => {
                      'none' => {
                                  'name' => 'GeForce GT 720',
                                  'type' => 'legacy'
                                }
                    },
          '0FCE' => {
                      'none' => {
                                  'name' => 'GeForce GT 640M LE',
                                  'type' => 'legacy'
                                }
                    },
          '27BB' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 3500 Ada Generation Laptop GPU'
                                }
                    },
          '1E02' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA TITAN RTX'
                                }
                    },
          '0288' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro4 980 XGL'
                                }
                    },
          '053E' => {
                      'none' => {
                                  'name' => 'GeForce 7025 / nForce 630a',
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
          '0618' => {
                      'none' => {
                                  'name' => 'GeForce GTX 260M',
                                  'type' => 'legacy'
                                }
                    },
          '0321' => {
                      'none' => {
                                  'name' => 'GeForce FX 5200 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '13B4' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro M620'
                                }
                    },
          '25A9' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2050',
                                  'type' => 'open'
                                }
                    },
          '24FA' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A4500 Embedded GPU'
                                }
                    },
          '1FB6' => {
                      'none' => {
                                  'name' => 'NVIDIA T600 Laptop GPU',
                                  'type' => 'open'
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
          '26B3' => {
                      '103C1934' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 5880 Ada Generation'
                                    },
                      '17AA1934' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 5880 Ada Generation'
                                    },
                      '10281934' => {
                                      'name' => 'NVIDIA RTX 5880 Ada Generation',
                                      'type' => 'open'
                                    },
                      '10DE1934' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX 5880 Ada Generation'
                                    }
                    },
          '0FF2' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GRID K1'
                                }
                    },
          '1D02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GT 1010',
                                  'type' => 'closed'
                                }
                    },
          '0DEC' => {
                      'none' => {
                                  'name' => 'GeForce GT 525M',
                                  'type' => 'legacy'
                                }
                    },
          '0621' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 230'
                                }
                    },
          '2770' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 5000 Ada Generation Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '06E9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9300M GS'
                                }
                    },
          '05F9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro CX'
                                }
                    },
          '1C94' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX350',
                                  'type' => 'closed'
                                }
                    },
          '1F0B' => {
                      'none' => {
                                  'name' => 'NVIDIA CMP 40HX',
                                  'type' => 'open'
                                }
                    },
          '1B02' => {
                      '10DE123F' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA TITAN Xp COLLECTORS EDITION'
                                    },
                      '10DE123E' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA TITAN Xp COLLECTORS EDITION'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA TITAN Xp',
                                  'type' => 'closed'
                                }
                    },
          '0202' => {
                      'none' => {
                                  'name' => 'GeForce3 Ti 500',
                                  'type' => 'legacy'
                                }
                    },
          '1F14' => {
                      '146212C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A4' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070'
                                },
                      '145878A5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C87A7' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8746' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '155850D3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809F3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043174F' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251442' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583002' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102809E2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C7' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582011' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B4' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '145875B6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155870D1' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886B5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8736' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8772' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '146212AE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C87A6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8738' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '10251446' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251401' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145875B5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '146212B0' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251432' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '145876B4' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8607' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '14581512' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C86C6' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A58200C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '145876B5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '104A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 610'
                                }
                    },
          '0092' => {
                      'none' => {
                                  'name' => 'GeForce 7800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0333' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5950 Ultra'
                                }
                    },
          '1BB8' => {
                      'none' => {
                                  'name' => 'Quadro P3000',
                                  'type' => 'closed'
                                }
                    },
          '0A74' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce G210M'
                                },
                      '17AA903A' => {
                                      'name' => 'GeForce G210',
                                      'type' => 'legacy'
                                    }
                    },
          '032C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX Go53xx'
                                }
                    },
          '2238' => {
                      '10DE1677' => {
                                      'name' => 'NVIDIA A10M',
                                      'type' => 'open'
                                    }
                    },
          '105A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 610M'
                                }
                    },
          '0A69' => {
                      'none' => {
                                  'name' => 'GeForce G105M',
                                  'type' => 'legacy'
                                }
                    },
          '0F02' => {
                      'none' => {
                                  'name' => 'GeForce GT 730',
                                  'type' => 'legacy'
                                }
                    },
          '0A20' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 220'
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
          '062C' => {
                      'none' => {
                                  'name' => 'GeForce 9800M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '0DE1' => {
                      'none' => {
                                  'name' => 'GeForce GT 430',
                                  'type' => 'legacy'
                                }
                    },
          '109B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 7000'
                                }
                    },
          '1DF2' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla PG503-216'
                                }
                    },
          '1287' => {
                      'none' => {
                                  'name' => 'GeForce GT 730',
                                  'type' => 'legacy'
                                }
                    },
          '0185' => {
                      'none' => {
                                  'name' => 'GeForce4 MX 4000',
                                  'type' => 'legacy'
                                }
                    },
          '087E' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'ION LE'
                                }
                    },
          '0348' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5700',
                                  'type' => 'legacy'
                                }
                    },
          '033F' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 700'
                                }
                    },
          '2F04' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 5070'
                                }
                    },
          '1346' => {
                      '17AA30BA' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      '17AA3636' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 930A'
                                    },
                      '17AA362F' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 930A'
                                    },
                      '17AA362C' => {
                                      'name' => 'NVIDIA GeForce 930A',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 930M',
                                  'type' => 'closed'
                                }
                    },
          '0395' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7300 GT'
                                }
                    },
          '0E3A' => {
                      'none' => {
                                  'name' => 'Quadro 3000M',
                                  'type' => 'legacy'
                                }
                    },
          '25BC' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A1000 6GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0FFE' => {
                      'none' => {
                                  'name' => 'Quadro K2000',
                                  'type' => 'legacy'
                                }
                    },
          '0648' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9600M GS'
                                }
                    },
          '0424' => {
                      'none' => {
                                  'name' => 'GeForce 8400 GS',
                                  'type' => 'legacy'
                                }
                    },
          '1CFA' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P2000'
                                }
                    },
          '0146' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 6600 TE/6200 TE'
                                }
                    },
          '0297' => {
                      'none' => {
                                  'name' => 'GeForce Go 7950 GTX',
                                  'type' => 'legacy'
                                }
                    },
          '1195' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660',
                                  'type' => 'legacy'
                                }
                    },
          '0600' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GTS 512',
                                  'type' => 'legacy'
                                }
                    },
          '0DF3' => {
                      'none' => {
                                  'name' => 'GeForce GT 420M',
                                  'type' => 'legacy'
                                }
                    },
          '06CA' => {
                      'none' => {
                                  'name' => 'GeForce GTX 480M',
                                  'type' => 'legacy'
                                }
                    },
          '1F03' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2060'
                                }
                    },
          '1244' => {
                      'none' => {
                                  'name' => 'GeForce GTX 550 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '0531' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7150M / nForce 630M'
                                }
                    },
          '2204' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3090',
                                  'type' => 'open'
                                }
                    },
          '0658' => {
                      'none' => {
                                  'name' => 'Quadro FX 380',
                                  'type' => 'legacy'
                                }
                    },
          '2820' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070 Laptop GPU'
                                }
                    },
          '2783' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070 SUPER'
                                }
                    },
          '2582' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050',
                                  'type' => 'open'
                                }
                    },
          '05E0' => {
                      'none' => {
                                  'name' => 'GeForce GTX 295',
                                  'type' => 'legacy'
                                }
                    },
          '1203' => {
                      'none' => {
                                  'name' => 'GeForce GTX 460 SE v2',
                                  'type' => 'legacy'
                                }
                    },
          '1EC2' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 SUPER',
                                  'type' => 'open'
                                }
                    },
          '0407' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8600M GT'
                                }
                    },
          '1082' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '28E3' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 A Laptop GPU'
                                }
                    },
          '1C22' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050',
                                  'type' => 'closed'
                                }
                    },
          '1F54' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070'
                                },
                      '17AA3FCE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C878A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '17AA3FD0' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '17AA3FCF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '0162' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6200SE TurboCache(TM)'
                                }
                    },
          '1F55' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2060'
                                }
                    },
          '0FED' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 820M'
                                }
                    },
          '1347' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 940M',
                                  'type' => 'closed'
                                },
                      '17AA36B9' => {
                                      'name' => 'NVIDIA GeForce 940A',
                                      'type' => 'closed'
                                    },
                      '17AA36BA' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 940A'
                                    }
                    },
          '062E' => {
                      '106B0605' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 130'
                                    },
                      'none' => {
                                  'name' => 'GeForce 9600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '2508' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 OEM'
                                }
                    },
          '1298' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 720M'
                                }
                    },
          '1008' => {
                      'none' => {
                                  'name' => 'GeForce GTX 780 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1040' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 520'
                                }
                    },
          '02E3' => {
                      'none' => {
                                  'name' => 'GeForce 7900 GS',
                                  'type' => 'legacy'
                                }
                    },
          '0147' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6700 XL'
                                }
                    },
          '1245' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTS 450'
                                }
                    },
          '084D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'nForce 750a SLI'
                                }
                    },
          '1050' => {
                      'none' => {
                                  'name' => 'GeForce GT 520M',
                                  'type' => 'legacy'
                                }
                    },
          '00F6' => {
                      'none' => {
                                  'name' => 'GeForce 6800 GS',
                                  'type' => 'legacy'
                                }
                    },
          '2324' => {
                      '10DE17A8' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA H800'
                                    },
                      '10DE17A6' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA H800'
                                    }
                    },
          '1C21' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                }
                    },
          '0161' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6200 TurboCache(TM)'
                                }
                    },
          '0425' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8600M GS'
                                }
                    },
          '1081' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 570'
                                }
                    },
          '1194' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K8'
                                }
                    },
          '0DEE' => {
                      'none' => {
                                  'name' => 'GeForce GT 415M',
                                  'type' => 'legacy'
                                }
                    },
          '0178' => {
                      'none' => {
                                  'name' => 'Quadro4 550 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '0394' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7600 LE'
                                }
                    },
          '15F0' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro GP100'
                                }
                    },
          '11A7' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 675MX'
                                }
                    },
          '25B2' => {
                      '103C8D95' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      '103C1879' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    },
                      '17AA1879' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A400'
                                    },
                      '10281879' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A400'
                                    },
                      '10DE1879' => {
                                      'name' => 'NVIDIA RTX A400',
                                      'type' => 'open'
                                    }
                    },
          '0406' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8300 GS'
                                }
                    },
          '0FE3' => {
                      '17AA3675' => {
                                      'name' => 'GeForce GT 745A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 745M',
                                  'type' => 'legacy'
                                },
                      '103C2B16' => {
                                      'name' => 'GeForce GT 745A',
                                      'type' => 'legacy'
                                    }
                    },
          '0A2A' => {
                      'none' => {
                                  'name' => 'GeForce GT 230M',
                                  'type' => 'legacy'
                                }
                    },
          '2182' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce GTX 1660 Ti'
                                }
                    },
          '1F98' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce MX450'
                                }
                    },
          '00A0' => {
                      'none' => {
                                  'name' => 'Aladdin TNT2',
                                  'type' => 'legacy'
                                }
                    },
          '28A1' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0CB1' => {
                      'none' => {
                                  'name' => 'GeForce GTS 360M',
                                  'type' => 'legacy'
                                }
                    },
          '2321' => {
                      '10DE1839' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA H100 NVL'
                                    }
                    },
          '01DD' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7500 LE'
                                }
                    },
          '0164' => {
                      'none' => {
                                  'name' => 'GeForce Go 6200',
                                  'type' => 'legacy'
                                }
                    },
          '025B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro4 700 XGL'
                                }
                    },
          '0179' => {
                      'none' => {
                                  'name' => 'GeForce4 440 Go 64M',
                                  'type' => 'legacy'
                                }
                    },
          '1FB0' => {
                      '103C12DB' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T1000'
                                    },
                      '10DE1485' => {
                                      'name' => 'NVIDIA DGX Display',
                                      'type' => 'open'
                                    },
                      '102812DB' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      '10DE12DB' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T1000'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    },
                      '17AA12DB' => {
                                      'name' => 'NVIDIA T1000',
                                      'type' => 'open'
                                    }
                    },
          '1F36' => {
                      '104313CF' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 3000 with Max-Q Design'
                                    },
                      '10280990' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 3000 with Max-Q Design'
                                    },
                      '103C8772' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 3000 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'Quadro RTX 3000'
                                },
                      '103C8736' => {
                                      'type' => 'open',
                                      'name' => 'Quadro RTX 3000 with Max-Q Design'
                                    },
                      '103C8738' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14140032' => {
                                      'name' => 'Quadro RTX 3000 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '1084' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 560'
                                }
                    },
          '0110' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce2 MX/MX 400'
                                }
                    },
          '00C0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6800 GS'
                                }
                    },
          '2584' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050'
                                }
                    },
          '0391' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '25F9' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A1000 Embedded GPU',
                                  'type' => 'open'
                                }
                    },
          '1F99' => {
                      '1025147B' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025147A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '146212D2' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '10251479' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3F93' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431902' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '17AA22DA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '146212BD' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '1025147C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                },
                      '1E833E30' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '104313B2' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8815' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '146212C5' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '10431402' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '029A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 2500M'
                                }
                    },
          '06DE' => {
                      '10DE091E' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla M2050'
                                    },
                      '10DE0773' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla S2050'
                                    },
                      '10DE082F' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0907' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0866' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla M2050'
                                    },
                      '10DE0840' => {
                                      'type' => 'legacy',
                                      'name' => 'Tesla X2070'
                                    },
                      '10DE0846' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      '10DE0842' => {
                                      'name' => 'Tesla M2050',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'Tesla T20 Processor',
                                  'type' => 'legacy'
                                }
                    },
          '00FA' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce PCX 5750'
                                }
                    },
          '1C07' => {
                      'none' => {
                                  'name' => 'NVIDIA P106-100',
                                  'type' => 'closed'
                                }
                    },
          '232C' => {
                      '10DE2063' => {
                                      'name' => 'NVIDIA H20-3e',
                                      'type' => 'open'
                                    }
                    },
          '0CBC' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1800M'
                                }
                    },
          '0422' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8400 GS'
                                }
                    },
          '1B38' => {
                      'none' => {
                                  'name' => 'Tesla P40',
                                  'type' => 'closed'
                                }
                    },
          '11BD' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K4000M'
                                }
                    },
          '039C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 560M'
                                }
                    },
          '1C8F' => {
                      '14621284' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design'
                                    },
                      '1462123C' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design'
                                    },
                      '1462126C' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1050 Ti',
                                  'type' => 'closed'
                                },
                      '14621297' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design'
                                    },
                      '1462126D' => {
                                      'name' => 'NVIDIA GeForce GTX 1050 Ti with Max-Q Design',
                                      'type' => 'closed'
                                    }
                    },
          '1F42' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2060 SUPER'
                                }
                    },
          '1299' => {
                      '17AA3637' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30BB' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA3630' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 920A'
                                    },
                      '1B0A01C6' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 730'
                                    },
                      '17AA36A7' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA36AF' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DF' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA362E' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DA' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA362D' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA369B' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA30DC' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 920M',
                                  'type' => 'legacy'
                                },
                      '17AA30DD' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 920A'
                                    },
                      '17AA361B' => {
                                      'name' => 'GeForce 920A',
                                      'type' => 'legacy'
                                    },
                      '17AA3117' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 920A'
                                    },
                      '17AA36F0' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 920A'
                                    }
                    },
          '1BA2' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1070'
                                }
                    },
          '1D13' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce MX250'
                                }
                    },
          '040A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 370'
                                }
                    },
          '01D3' => {
                      'none' => {
                                  'name' => 'GeForce 7300 SE/7200 GS',
                                  'type' => 'legacy'
                                }
                    },
          '2B87' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5090 D',
                                  'type' => 'open'
                                }
                    },
          '0A26' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 405'
                                }
                    },
          '20B3' => {
                      '10DE14A7' => {
                                      'name' => 'NVIDIA A100-SXM-64GB',
                                      'type' => 'open'
                                    },
                      '10DE14A8' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A100-SXM-64GB'
                                    }
                    },
          '0659' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 580'
                                }
                    },
          '2838' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX 3000 Ada Generation Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1241' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 545'
                                }
                    },
          '249C' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3080 Laptop GPU',
                                  'type' => 'open'
                                },
                      '1D051194' => {
                                      'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                      'type' => 'open'
                                    }
                    },
          '2184' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1660',
                                  'type' => 'open'
                                }
                    },
          '0392' => {
                      'none' => {
                                  'name' => 'GeForce 7600 GS',
                                  'type' => 'legacy'
                                }
                    },
          '042C' => {
                      'none' => {
                                  'name' => 'GeForce 9400 GT',
                                  'type' => 'legacy'
                                }
                    },
          '1183' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '11C6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 650 Ti'
                                }
                    },
          '014A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 440',
                                  'type' => 'legacy'
                                }
                    },
          '2322' => {
                      '10DE17A4' => {
                                      'name' => 'NVIDIA H800 PCIe',
                                      'type' => 'open'
                                    }
                    },
          '1F51' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060',
                                  'type' => 'open'
                                }
                    },
          '139B' => {
                      '17AA3649' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 750Ti'
                                    },
                      '1AFA8A75' => {
                                      'name' => 'NVIDIA GeForce GTX 750Ti',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 960M',
                                  'type' => 'closed'
                                },
                      '17AA36BF' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 960A'
                                    },
                      '1025107A' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 750 Ti'
                                    },
                      '103C2B4C' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 960A'
                                    },
                      '19DAC248' => {
                                      'name' => 'NVIDIA GeForce GTX 750 Ti',
                                      'type' => 'closed'
                                    },
                      '102806A3' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 860M'
                                    }
                    },
          '1C06' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 6GB',
                                  'type' => 'closed'
                                }
                    },
          '1BA1' => {
                      '14621225' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '14621227' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '10431CCE' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '102808A2' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14581651' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '1A582000' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '102808A1' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1070',
                                  'type' => 'closed'
                                },
                      '14581653' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621226' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '155895E1' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '15589501' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '146211E9' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '1D051032' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design'
                                    },
                      '146211E8' => {
                                      'name' => 'NVIDIA GeForce GTX 1070 with Max-Q Design',
                                      'type' => 'closed'
                                    }
                    },
          '002C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Vanta/Vanta LT'
                                }
                    },
          '1251' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560M',
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
          '1CBB' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P1000'
                                }
                    },
          '0A27' => {
                      'none' => {
                                  'name' => 'GeForce 405',
                                  'type' => 'legacy'
                                }
                    },
          '0421' => {
                      'none' => {
                                  'name' => 'GeForce 8500 GT',
                                  'type' => 'legacy'
                                }
                    },
          '24C7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '1ED0' => {
                      '102808EE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '17AA3FFE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2080',
                                  'type' => 'open'
                                },
                      '104315C1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8573' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '17AA3FEE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    },
                      '103C8605' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8600' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025132D' => {
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043138F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2080 with Max-Q Design'
                                    }
                    },
          '0165' => {
                      'none' => {
                                  'name' => 'Quadro NVS 285',
                                  'type' => 'legacy'
                                }
                    },
          '20BD' => {
                      '10DE17F4' => {
                                      'name' => 'NVIDIA A800-SXM4-40GB',
                                      'type' => 'open'
                                    }
                    },
          '1280' => {
                      'none' => {
                                  'name' => 'GeForce GT 635',
                                  'type' => 'legacy'
                                }
                    },
          '1052' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 520M'
                                }
                    },
          '1FF9' => {
                      'none' => {
                                  'name' => 'Quadro T1000',
                                  'type' => 'open'
                                }
                    },
          '060C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8800M GTX'
                                }
                    },
          '25B0' => {
                      '10DE1878' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '17AA1878' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A1000'
                                    },
                      '103C8D96' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '103C1878' => {
                                      'name' => 'NVIDIA RTX A1000',
                                      'type' => 'open'
                                    },
                      '10281878' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A1000'
                                    }
                    },
          '05E1' => {
                      'none' => {
                                  'name' => 'GeForce GTX 280',
                                  'type' => 'legacy'
                                }
                    },
          '06F1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce G105M'
                                }
                    },
          '0A6F' => {
                      'none' => {
                                  'name' => 'Second Generation ION',
                                  'type' => 'legacy'
                                }
                    },
          '0FD5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 650M'
                                }
                    },
          '1188' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 690'
                                }
                    },
          '05FF' => {
                      'none' => {
                                  'name' => 'Quadro FX 3800',
                                  'type' => 'legacy'
                                }
                    },
          '06EF' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce G 103M'
                                }
                    },
          '0222' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6200 A-LE'
                                }
                    },
          '0FFA' => {
                      'none' => {
                                  'name' => 'Quadro K600',
                                  'type' => 'legacy'
                                }
                    },
          '1284' => {
                      'none' => {
                                  'name' => 'GeForce GT 630',
                                  'type' => 'legacy'
                                }
                    },
          '25AB' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 4GB Laptop GPU'
                                }
                    },
          '1436' => {
                      'none' => {
                                  'name' => 'Quadro M2200',
                                  'type' => 'closed'
                                }
                    },
          '087A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9400'
                                }
                    },
          '17FD' => {
                      '10DE1173' => {
                                      'name' => 'Tesla M40 24GB',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla M40'
                                }
                    },
          '24B8' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A3000 Laptop GPU'
                                }
                    },
          '0601' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '1042' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 510'
                                }
                    },
          '0DF9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 500M'
                                }
                    },
          '06EB' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro NVS 160M'
                                }
                    },
          '11FC' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro K2100M'
                                }
                    },
          '0301' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5800 Ultra'
                                }
                    },
          '2704' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4080',
                                  'type' => 'open'
                                }
                    },
          '11B8' => {
                      'none' => {
                                  'name' => 'Quadro K5100M',
                                  'type' => 'legacy'
                                }
                    },
          '1C96' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX350',
                                  'type' => 'closed'
                                }
                    },
          '2705' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070 Ti SUPER'
                                }
                    },
          '0DEA' => {
                      '17AA365E' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce 610M',
                                  'type' => 'legacy'
                                },
                      '17AA366C' => {
                                      'name' => 'GeForce 615',
                                      'type' => 'legacy'
                                    },
                      '17AA3660' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 615'
                                    },
                      '17AA365A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 615'
                                    },
                      '17AA365B' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 615'
                                    }
                    },
          '05E2' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 260'
                                }
                    },
          '104C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 705'
                                }
                    },
          '2822' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 A Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '07E3' => {
                      'none' => {
                                  'name' => 'GeForce 7050 / nForce 610i',
                                  'type' => 'legacy'
                                }
                    },
          '20F1' => {
                      '10DE145F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA A100-PCIE-40GB'
                                    }
                    },
          '1080' => {
                      'none' => {
                                  'name' => 'GeForce GTX 580',
                                  'type' => 'legacy'
                                }
                    },
          '0FE9' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 750M'
                                }
                    },
          '13B6' => {
                      'none' => {
                                  'name' => 'Quadro M1200',
                                  'type' => 'closed'
                                }
                    },
          '1051' => {
                      'none' => {
                                  'name' => 'GeForce GT 520MX',
                                  'type' => 'legacy'
                                }
                    },
          '0160' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6500'
                                }
                    },
          '1C20' => {
                      '10280885' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '17AA39B9' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280886' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '1D051059' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    },
                      '155895E5' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8581' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060',
                                  'type' => 'closed'
                                },
                      '10280802' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    },
                      '1A582000' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    },
                      '1A582001' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '103C8467' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    },
                      '10280803' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    },
                      '103C8478' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    },
                      '10280827' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '14621244' => {
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      '10280825' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 1060 with Max-Q Design'
                                    }
                    },
          '062A' => {
                      'none' => {
                                  'name' => 'GeForce 9700M GTS',
                                  'type' => 'legacy'
                                }
                    },
          '0302' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5800'
                                }
                    },
          '0FD4' => {
                      'none' => {
                                  'name' => 'GeForce GTX 660M',
                                  'type' => 'legacy'
                                }
                    },
          '03D6' => {
                      'none' => {
                                  'name' => 'GeForce 7025 / nForce 630a',
                                  'type' => 'legacy'
                                }
                    },
          '0218' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XT',
                                  'type' => 'legacy'
                                }
                    },
          '13D8' => {
                      '14621198' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 960'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 970M',
                                  'type' => 'closed'
                                },
                      '19DAB286' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      '19DAB282' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    },
                      '19DAB284' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce GTX 960'
                                    },
                      '14621199' => {
                                      'name' => 'NVIDIA GeForce GTX 960',
                                      'type' => 'closed'
                                    }
                    },
          '2488' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3070',
                                  'type' => 'open'
                                }
                    },
          '1D33' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Quadro P500'
                                }
                    },
          '13FB' => {
                      'none' => {
                                  'name' => 'Quadro M5500',
                                  'type' => 'closed'
                                }
                    },
          '032A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 55/280 PCI',
                                  'type' => 'legacy'
                                }
                    },
          '0602' => {
                      'none' => {
                                  'name' => 'GeForce 8800 GT',
                                  'type' => 'legacy'
                                }
                    },
          '01D8' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 7400'
                                }
                    },
          '0A76' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Second Generation ION'
                                }
                    },
          '0849' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8200'
                                }
                    },
          '0221' => {
                      'none' => {
                                  'name' => 'GeForce 6200',
                                  'type' => 'legacy'
                                }
                    },
          '086F' => {
                      'none' => {
                                  'name' => 'GeForce 8200M G',
                                  'type' => 'legacy'
                                }
                    },
          '2503' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060',
                                  'type' => 'open'
                                }
                    },
          '28BB' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX 500 Ada Generation Laptop GPU'
                                }
                    },
          '0FD1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 650M'
                                }
                    },
          '2702' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4080 SUPER'
                                }
                    },
          '00FE' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1300'
                                }
                    },
          '13D9' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 965M'
                                }
                    },
          '1F9D' => {
                      '1462131B' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043149C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                },
                      '1043185C' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043128D' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043130D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '1462132E' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621302' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '146212F4' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043189C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    },
                      '1462132A' => {
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621326' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce GTX 1650 with Max-Q Design'
                                    }
                    },
          '00CC' => {
                      'none' => {
                                  'name' => 'Quadro FX Go1400',
                                  'type' => 'legacy'
                                }
                    },
          '040E' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 570'
                                }
                    },
          '0848' => {
                      'none' => {
                                  'name' => 'GeForce 8300',
                                  'type' => 'legacy'
                                }
                    },
          '1FBC' => {
                      'none' => {
                                  'name' => 'NVIDIA T1200 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '2544' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3060'
                                }
                    },
          '2489' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Ti',
                                  'type' => 'open'
                                }
                    },
          '13BA' => {
                      'none' => {
                                  'name' => 'Quadro K2200',
                                  'type' => 'closed'
                                }
                    },
          '1293' => {
                      'none' => {
                                  'name' => 'GeForce GT 730M',
                                  'type' => 'legacy'
                                }
                    },
          '0CAF' => {
                      'none' => {
                                  'name' => 'GeForce GT 335M',
                                  'type' => 'legacy'
                                }
                    },
          '1282' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 640'
                                }
                    },
          '017D' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 410 Go 16M'
                                }
                    },
          '0626' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 130'
                                }
                    },
          '0173' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce4 MX 440-SE'
                                }
                    },
          '00C1' => {
                      'none' => {
                                  'name' => 'GeForce 6800',
                                  'type' => 'legacy'
                                }
                    },
          '0390' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7650 GS'
                                }
                    },
          '2339' => {
                      '10DE17FC' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA H100'
                                    }
                    },
          '0326' => {
                      'none' => {
                                  'name' => 'GeForce FX 5500',
                                  'type' => 'legacy'
                                }
                    },
          '0605' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9800 GT'
                                }
                    },
          '1F82' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce GTX 1650'
                                }
                    },
          '029E' => {
                      'none' => {
                                  'name' => 'Quadro FX 1500',
                                  'type' => 'legacy'
                                }
                    },
          '0A7A' => {
                      '1462AC82' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '16423980' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 405'
                                    },
                      '17AA3950' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 405M'
                                    },
                      '1BFD8006' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 315M'
                                },
                      '1BFD0003' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1462AA58' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1462AA51' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '1462AC71' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    },
                      '17AA397D' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce 405M'
                                    },
                      '1B0A90B4' => {
                                      'name' => 'GeForce 405',
                                      'type' => 'legacy'
                                    }
                    },
          '06DA' => {
                      'none' => {
                                  'name' => 'Quadro 5000M',
                                  'type' => 'legacy'
                                }
                    },
          '1FB1' => {
                      '103C8A80' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      '10281488' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T600'
                                    },
                      '17AA1488' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    },
                      '103C1488' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T600'
                                    },
                      '10DE1488' => {
                                      'name' => 'NVIDIA T600',
                                      'type' => 'open'
                                    }
                    },
          '0111' => {
                      'none' => {
                                  'name' => 'GeForce2 MX 100/200',
                                  'type' => 'legacy'
                                }
                    },
          '27B8' => {
                      '10DE16EE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA L4'
                                    },
                      '10DE16CA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA L4'
                                    }
                    },
          '28A0' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0CB0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTS 350M'
                                }
                    },
          '1054' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 410M'
                                }
                    },
          '1ED1' => {
                      '103C878A' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FCF' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070 Super'
                                },
                      '1043165F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '17AA3FCE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '17AA3FD0' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '103C8746' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '144DC192' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10251432' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '1281' => {
                      'none' => {
                                  'name' => 'GeForce GT 710',
                                  'type' => 'legacy'
                                }
                    },
          '1055' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 410M'
                                }
                    },
          '103A' => {
                      'none' => {
                                  'name' => 'Quadro K6000',
                                  'type' => 'legacy'
                                }
                    },
          '0343' => {
                      'none' => {
                                  'name' => 'GeForce FX 5700LE',
                                  'type' => 'legacy'
                                }
                    },
          '0DE7' => {
                      'none' => {
                                  'name' => 'GeForce GT 610',
                                  'type' => 'legacy'
                                }
                    },
          '0604' => {
                      'none' => {
                                  'name' => 'GeForce 9800 GX2',
                                  'type' => 'legacy'
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
                                    }
                    },
          '0420' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8400 SE'
                                }
                    },
          '061B' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro VX 200'
                                }
                    },
          '24B9' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A3000 12GB Laptop GPU'
                                }
                    },
          '0DF8' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro 600'
                                }
                    },
          '1BA0' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1080'
                                },
                      '10280887' => {
                                      'name' => 'NVIDIA GeForce GTX 1080 with Max-Q Design',
                                      'type' => 'closed'
                                    }
                    },
          '018A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 280 SD',
                                  'type' => 'legacy'
                                }
                    },
          '061F' => {
                      'none' => {
                                  'name' => 'Quadro FX 3800M',
                                  'type' => 'legacy'
                                }
                    },
          '1E07' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2080 Ti'
                                }
                    },
          '1F08' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2060'
                                }
                    },
          '0FD2' => {
                      '102805B2' => {
                                      'name' => 'GeForce GT 640M LE',
                                      'type' => 'legacy'
                                    },
                      'none' => {
                                  'name' => 'GeForce GT 640M',
                                  'type' => 'legacy'
                                },
                      '10280595' => {
                                      'name' => 'GeForce GT 640M LE',
                                      'type' => 'legacy'
                                    }
                    },
          '1DF6' => {
                      'none' => {
                                  'name' => 'Tesla V100S-PCIE-32GB',
                                  'type' => 'closed'
                                }
                    },
          '0643' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9500 GT'
                                }
                    },
          '031B' => {
                      'none' => {
                                  'name' => 'GeForce FX Go5650',
                                  'type' => 'legacy'
                                }
                    },
          '2788' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 4060 Ti',
                                  'type' => 'open'
                                }
                    },
          '134E' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 930MX'
                                }
                    },
          '2F58' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 5070 Ti Laptop GPU'
                                }
                    },
          '1F50' => {
                      '103C8605' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8600' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8572' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8573' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '17AA3FEE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070'
                                },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8574' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808EE' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA3FFE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    }
                    },
          '0FF6' => {
                      'none' => {
                                  'name' => 'Quadro K1100M',
                                  'type' => 'legacy'
                                }
                    },
          '0876' => {
                      'none' => {
                                  'name' => 'ION',
                                  'type' => 'legacy'
                                }
                    },
          '1FB2' => {
                      '103C1489' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '17AA1489' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '10281489' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T400'
                                    },
                      '103C8A80' => {
                                      'name' => 'NVIDIA T400',
                                      'type' => 'open'
                                    },
                      '10DE1489' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA T400'
                                    }
                    },
          '1BBB' => {
                      '17AA2262' => {
                                      'name' => 'Quadro P3200 with Max-Q Design',
                                      'type' => 'closed'
                                    },
                      'none' => {
                                  'name' => 'Quadro P3200',
                                  'type' => 'closed'
                                },
                      '17AA225F' => {
                                      'type' => 'closed',
                                      'name' => 'Quadro P3200 with Max-Q Design'
                                    }
                    },
          '0112' => {
                      'none' => {
                                  'name' => 'GeForce2 Go',
                                  'type' => 'legacy'
                                }
                    },
          '0627' => {
                      'none' => {
                                  'name' => 'GeForce GT 140',
                                  'type' => 'legacy'
                                }
                    },
          '0653' => {
                      'none' => {
                                  'name' => 'GeForce GT 120M',
                                  'type' => 'legacy'
                                }
                    },
          '0020' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'RIVA TNT'
                                }
                    },
          '00C2' => {
                      'none' => {
                                  'name' => 'GeForce 6800 LE',
                                  'type' => 'legacy'
                                }
                    },
          '1B06' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1080 Ti',
                                  'type' => 'closed'
                                }
                    },
          '1208' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 SE',
                                  'type' => 'legacy'
                                }
                    },
          '0327' => {
                      'none' => {
                                  'name' => 'GeForce FX 5100',
                                  'type' => 'legacy'
                                }
                    },
          '014E' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 540'
                                }
                    },
          '1189' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 670'
                                },
                      '10DE1074' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GTX 760 Ti OEM'
                                    }
                    },
          '1F10' => {
                      '145886A5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14621277' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808EF' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145886A4' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808A1' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '14621274' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '10431881' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '14581663' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070'
                                },
                      '14581658' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '10251342' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808EA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '1028093C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808EB' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581664' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8606' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D051070' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043132F' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '1D05105E' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808ED' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '10431E6E' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583000' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1043136F' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1025132D' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808EE' => {
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
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '145875A4' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '102808A2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A582007' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1D052087' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '145875A5' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '80862087' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1028093B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8602' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '102808EC' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8573' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '103C8572' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design'
                                    },
                      '1A583001' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '155895E1' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 with Max-Q Design',
                                      'type' => 'open'
                                    }
                    },
          '2F18' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 5070 Ti Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0638' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1800'
                                }
                    },
          '0401' => {
                      'none' => {
                                  'name' => 'GeForce 8600 GT',
                                  'type' => 'legacy'
                                }
                    },
          '25E2' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU'
                                }
                    },
          '0DD3' => {
                      'none' => {
                                  'name' => 'GeForce GT 435M',
                                  'type' => 'legacy'
                                }
                    },
          '0613' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9800 GTX+'
                                }
                    },
          '1399' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce 945M',
                                  'type' => 'closed'
                                }
                    },
          '1C90' => {
                      '102809C1' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce MX250'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX150',
                                  'type' => 'closed'
                                }
                    },
          '029C' => {
                      'none' => {
                                  'name' => 'Quadro FX 5500',
                                  'type' => 'legacy'
                                }
                    },
          '1FDD' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650',
                                  'type' => 'open'
                                }
                    },
          '0152' => {
                      'none' => {
                                  'name' => 'GeForce2 Ultra',
                                  'type' => 'legacy'
                                }
                    },
          '11A2' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 675MX'
                                }
                    },
          '2901' => {
                      '10DE199B' => {
                                      'name' => 'NVIDIA B200',
                                      'type' => 'open'
                                    },
                      '10DE20DA' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA B200'
                                    },
                      '10DE1999' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA B200'
                                    }
                    },
          '00F1' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6600 GT'
                                }
                    },
          '0338' => {
                      'none' => {
                                  'name' => 'Quadro FX 3000',
                                  'type' => 'legacy'
                                }
                    },
          '0166' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 6400'
                                }
                    },
          '1086' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 570'
                                }
                    },
          '10C3' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8400GS'
                                }
                    },
          '2B85' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 5090'
                                }
                    },
          '2187' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1650 SUPER',
                                  'type' => 'open'
                                }
                    },
          '13B0' => {
                      'none' => {
                                  'name' => 'Quadro M2000M',
                                  'type' => 'closed'
                                }
                    },
          '064B' => {
                      'none' => {
                                  'name' => 'GeForce 9500M G',
                                  'type' => 'legacy'
                                }
                    },
          '2233' => {
                      '10DE165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      '1028165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      '17AA165A' => {
                                      'name' => 'NVIDIA RTX A5500',
                                      'type' => 'open'
                                    },
                      '103C165A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX A5500'
                                    }
                    },
          '065B' => {
                      'none' => {
                                  'name' => 'GeForce 9400 GT',
                                  'type' => 'legacy'
                                }
                    },
          '0291' => {
                      'none' => {
                                  'name' => 'GeForce 7900 GT/GTO',
                                  'type' => 'legacy'
                                }
                    },
          '1210' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 570M'
                                }
                    },
          '03D0' => {
                      'none' => {
                                  'name' => 'GeForce 6150SE nForce 430',
                                  'type' => 'legacy'
                                }
                    },
          '040C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 570M'
                                }
                    },
          '061D' => {
                      'none' => {
                                  'name' => 'Quadro FX 2800M',
                                  'type' => 'legacy'
                                }
                    },
          '00CE' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 1400'
                                }
                    },
          '00FC' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Quadro FX 330/GeForce PCX 5300'
                                }
                    },
          '1BC7' => {
                      'none' => {
                                  'name' => 'NVIDIA P104-101',
                                  'type' => 'closed'
                                }
                    },
          '119A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 860M'
                                }
                    },
          '1DB3' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla V100-FHHL-16GB'
                                }
                    },
          '0A70' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 310M'
                                },
                      '17AA3605' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    },
                      '17AA3617' => {
                                      'name' => 'Second Generation ION',
                                      'type' => 'legacy'
                                    }
                    },
          '0142' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6600 LE'
                                }
                    },
          '2BB4' => {
                      '10DE204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    },
                      '17AA204C' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition'
                                    },
                      '103C204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    },
                      '1028204C' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Max-Q Workstation Edition',
                                      'type' => 'open'
                                    }
                    },
          '11C5' => {
                      'none' => {
                                  'name' => 'GeForce GT 740',
                                  'type' => 'legacy'
                                }
                    },
          '014C' => {
                      'none' => {
                                  'name' => 'Quadro FX 540M',
                                  'type' => 'legacy'
                                }
                    },
          '1E91' => {
                      '145878A3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145878A2' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2070 Super'
                                },
                      '1A58200A' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '146212C6' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '1A582009' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '14581511' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '1A583002' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '145886B2' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '145886B3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '103C8738' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '146212AE' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '103C8772' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '103C8736' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '17AA22C3' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '145875B3' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '10431E61' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '146212B0' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '103C8607' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '145875B4' => {
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
                      '17AA22C5' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    },
                      '80863012' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B3' => {
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design',
                                      'type' => 'open'
                                    },
                      '145876B2' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA GeForce RTX 2070 Super with Max-Q Design'
                                    }
                    },
          '1380' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 750 Ti'
                                }
                    },
          '11C4' => {
                      'none' => {
                                  'name' => 'GeForce GTX 645',
                                  'type' => 'legacy'
                                }
                    },
          '174E' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce MX110',
                                  'type' => 'closed'
                                }
                    },
          '0CA3' => {
                      'none' => {
                                  'name' => 'GeForce GT 240',
                                  'type' => 'legacy'
                                }
                    },
          '042A' => {
                      'none' => {
                                  'name' => 'Quadro NVS 130M',
                                  'type' => 'legacy'
                                }
                    },
          '06C4' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 465'
                                }
                    },
          '1029' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K40s'
                                }
                    },
          '11A1' => {
                      'none' => {
                                  'name' => 'GeForce GTX 670MX',
                                  'type' => 'legacy'
                                }
                    },
          '2560' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3060 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '00F2' => {
                      'none' => {
                                  'name' => 'GeForce 6600',
                                  'type' => 'legacy'
                                }
                    },
          '0151' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce2 Ti'
                                }
                    },
          '0402' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8600 GT'
                                }
                    },
          '1EC7' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2070 SUPER',
                                  'type' => 'open'
                                }
                    },
          '1087' => {
                      'none' => {
                                  'name' => 'GeForce GTX 560 Ti',
                                  'type' => 'legacy'
                                }
                    },
          '1667' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 965M'
                                }
                    },
          '25B6' => {
                      '10DE157E' => {
                                      'name' => 'NVIDIA A2',
                                      'type' => 'open'
                                    },
                      '10DE14A9' => {
                                      'name' => 'NVIDIA A16',
                                      'type' => 'open'
                                    }
                    },
          '0167' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce Go 6200'
                                }
                    },
          '0863' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 9400M'
                                }
                    },
          '0FC6' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 650'
                                }
                    },
          '1430' => {
                      'none' => {
                                  'name' => 'Quadro M2000',
                                  'type' => 'closed'
                                }
                    },
          '086D' => {
                      'none' => {
                                  'name' => 'GeForce 9200',
                                  'type' => 'legacy'
                                }
                    },
          '2438' => {
                      'none' => {
                                  'name' => 'NVIDIA RTX A5500 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0141' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6600'
                                }
                    },
          '0259' => {
                      'none' => {
                                  'name' => 'Quadro4 750 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '1F9F' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce MX550'
                                }
                    },
          '220A' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3080'
                                }
                    },
          '25EC' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 6GB Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '1B83' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce GTX 1060 6GB'
                                }
                    },
          '0292' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7900 GS'
                                }
                    },
          '10D8' => {
                      'none' => {
                                  'name' => 'NVS 300',
                                  'type' => 'legacy'
                                }
                    },
          '1341' => {
                      '17AA3697' => {
                                      'name' => 'NVIDIA GeForce 840A',
                                      'type' => 'closed'
                                    },
                      '17AA369C' => {
                                      'name' => 'NVIDIA GeForce 840A',
                                      'type' => 'closed'
                                    },
                      '17AA36AF' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 840A'
                                    },
                      '17AA3699' => {
                                      'type' => 'closed',
                                      'name' => 'NVIDIA GeForce 840A'
                                    },
                      'none' => {
                                  'name' => 'NVIDIA GeForce 840M',
                                  'type' => 'closed'
                                }
                    },
          '1C04' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 5GB',
                                  'type' => 'closed'
                                }
                    },
          '137B' => {
                      'none' => {
                                  'name' => 'Quadro M520',
                                  'type' => 'closed'
                                }
                    },
          '25FB' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A500 Embedded GPU'
                                }
                    },
          '0144' => {
                      'none' => {
                                  'name' => 'GeForce Go 6600',
                                  'type' => 'legacy'
                                }
                    },
          '0426' => {
                      'none' => {
                                  'name' => 'GeForce 8400M GT',
                                  'type' => 'legacy'
                                }
                    },
          '0258' => {
                      'none' => {
                                  'name' => 'Quadro4 900 XGL',
                                  'type' => 'legacy'
                                }
                    },
          '00F5' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7800 GS'
                                }
                    },
          '2420' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3080 Ti Laptop GPU'
                                }
                    },
          '0103' => {
                      'none' => {
                                  'name' => 'Quadro',
                                  'type' => 'legacy'
                                }
                    },
          '1DF0' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'Tesla PG500-216'
                                }
                    },
          '053A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7050 PV / nForce 630a'
                                }
                    },
          '107D' => {
                      'none' => {
                                  'name' => 'NVS 310',
                                  'type' => 'legacy'
                                }
                    },
          '0F00' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 630'
                                }
                    },
          '0405' => {
                      'none' => {
                                  'name' => 'GeForce 9500M GS',
                                  'type' => 'legacy'
                                }
                    },
          '0A22' => {
                      'none' => {
                                  'name' => 'GeForce 315',
                                  'type' => 'legacy'
                                }
                    },
          '25BA' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA RTX A2000 8GB Laptop GPU'
                                }
                    },
          '1344' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 845M'
                                }
                    },
          '0870' => {
                      'none' => {
                                  'name' => 'GeForce 9400M',
                                  'type' => 'legacy'
                                }
                    },
          '0E23' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GTX 460 SE'
                                }
                    },
          '0397' => {
                      'none' => {
                                  'name' => 'GeForce Go 7700',
                                  'type' => 'legacy'
                                }
                    },
          '1028' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'Tesla K20m'
                                }
                    },
          '2206' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3080'
                                }
                    },
          '2689' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 4070 Ti SUPER'
                                }
                    },
          '0295' => {
                      'none' => {
                                  'name' => 'GeForce 7950 GT',
                                  'type' => 'legacy'
                                }
                    },
          '13F3' => {
                      'none' => {
                                  'name' => 'Tesla M6',
                                  'type' => 'closed'
                                }
                    },
          '1246' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce GT 550M'
                                }
                    },
          '0200' => {
                      'none' => {
                                  'name' => 'GeForce3',
                                  'type' => 'legacy'
                                }
                    },
          '0090' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7800 GTX'
                                }
                    },
          '0E31' => {
                      'none' => {
                                  'name' => 'GeForce GTX 485M',
                                  'type' => 'legacy'
                                }
                    },
          '1B00' => {
                      'none' => {
                                  'name' => 'NVIDIA TITAN X (Pascal)',
                                  'type' => 'closed'
                                }
                    },
          '0A63' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 310'
                                }
                    },
          '05FD' => {
                      'none' => {
                                  'name' => 'Quadro FX 5800',
                                  'type' => 'legacy'
                                }
                    },
          '1C02' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce GTX 1060 3GB',
                                  'type' => 'closed'
                                }
                    },
          '0427' => {
                      'none' => {
                                  'name' => 'GeForce 8400M GS',
                                  'type' => 'legacy'
                                }
                    },
          '25E5' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 3050 Laptop GPU',
                                  'type' => 'open'
                                }
                    },
          '0294' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7950 GX2'
                                }
                    },
          '0DE0' => {
                      'none' => {
                                  'name' => 'GeForce GT 440',
                                  'type' => 'legacy'
                                }
                    },
          '1F47' => {
                      'none' => {
                                  'name' => 'NVIDIA GeForce RTX 2060 SUPER',
                                  'type' => 'open'
                                }
                    },
          '25AD' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 2050'
                                }
                    },
          '016A' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 7100 GS'
                                }
                    },
          '0043' => {
                      'none' => {
                                  'name' => 'GeForce 6800 XE',
                                  'type' => 'legacy'
                                }
                    },
          '2BB1' => {
                      '10DE204B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition'
                                    },
                      '1028204B' => {
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition',
                                      'type' => 'open'
                                    },
                      '103C204B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition'
                                    },
                      '17AA204B' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA RTX PRO 6000 Blackwell Workstation Edition'
                                    }
                    },
          '26B9' => {
                      '10DE1851' => {
                                      'name' => 'NVIDIA L40S',
                                      'type' => 'open'
                                    },
                      '10DE18CF' => {
                                      'type' => 'open',
                                      'name' => 'NVIDIA L40S'
                                    }
                    },
          '0A2C' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'NVS 5100M'
                                }
                    },
          '0404' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 8400 GS'
                                }
                    },
          '1398' => {
                      'none' => {
                                  'type' => 'closed',
                                  'name' => 'NVIDIA GeForce 845M'
                                }
                    },
          '11E3' => {
                      '17AA3683' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GTX 760A'
                                    },
                      'none' => {
                                  'name' => 'GeForce GTX 760M',
                                  'type' => 'legacy'
                                }
                    },
          '00F4' => {
                      'none' => {
                                  'name' => 'GeForce 6600 LE',
                                  'type' => 'legacy'
                                }
                    },
          '08A0' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 320M'
                                }
                    },
          '0320' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce FX 5200'
                                }
                    },
          '06E3' => {
                      'none' => {
                                  'name' => 'GeForce 8400 SE',
                                  'type' => 'legacy'
                                }
                    },
          '0145' => {
                      'none' => {
                                  'type' => 'legacy',
                                  'name' => 'GeForce 6610 XL'
                                }
                    },
          '1247' => {
                      'none' => {
                                  'name' => 'GeForce GT 555M',
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
                      '1043212A' => {
                                      'type' => 'legacy',
                                      'name' => 'GeForce GT 635M'
                                    }
                    },
          '11C2' => {
                      'none' => {
                                  'name' => 'GeForce GTX 650 Ti BOOST',
                                  'type' => 'legacy'
                                }
                    },
          '2207' => {
                      'none' => {
                                  'type' => 'open',
                                  'name' => 'NVIDIA GeForce RTX 3070 Ti'
                                }
                    }
			);

sub nvidiaPackage { 
	return %NVIDIA_PACKAGE;
}

sub nvidiaProductID {
	return %NVIDIA_PRODUCT_ID;
}

1;

