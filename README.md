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

To package and use it:

clone the repo

modify the name of the cloned directory to packagename-version

Eg.:

mv ./tuxedo-tomte tuxedo-tomte-2.0.0

cd  tuxedo-tomte-2.0.0

dh_make --indep --createorigin

debuild -us -uc
