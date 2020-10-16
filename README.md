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

**To package and use it:**

clone the repo

Eg.:

```
cd  tuxedo-tomte
dh_make --indep --createorig --packagename tuxedo-tomte_2.0.0
debuild -us -uc
```

Use your Version number instead of *2.0.0*