%define module tuxedo-tomte

#
# spec file for package tuxedo-tomte
#
# Copyright (c) 2020 SUSE LINUX GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#

Summary:        Little brownie that provides services, updates and fixes for TUXEDO devices
Name:           %{module}
Version:        1.0.0
Release:        1
License:        GPL-3.0+
Group:          System/Management
BuildArch:      noarch
Url:            https://www.tuxedocomputers.com
BuildRoot:      %{_tmppath}

%description
TUXEDO Tomte is a little brownie that provides services, updates and fixes for
TUXEDO devices in the background. It does not send any information, telemetry
data or similar stuff out!
This is a meta package and it is safe to remove if you don't want to get useful
or necessary packages delivered to your TUXEDO device automatically.
TUXEDO Tomte ist ein kleines Heinzelmaennchen, das Dienste, Updates und Fixes
für TUXEDO-Geräte im Hintergrund bereitstellt. Es sendet keine Informationen,
Telemetriedaten oder ähnliches zurück!
Dies ist ein Meta-Paket und kann ohne Gefahr entfernt werden falls eine
automatisierte Installation von nützlichen oder notwendigen Paketen für Ihr
TUXEDO-Gerät nicht erwünscht wird.

%files
%defattr(-,root,root)

%changelog
* Mon Mar 02 2020 E Mohr <tux@tuxedocomputers.com> 1.0.0
- Initial release
