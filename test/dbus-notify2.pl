#!/usr/bin/perl


sub messageDesktop {
    my $summary = shift;
    my $body = shift;
    my $urgency = shift;
    my $icon = shift;

    my $mUsername = '';
    my $mPid = '';
    my $mLine = '';
    my @whoLines = `who -u`;

    foreach $mLine (@whoLines) {
        if ($mLine =~ /\(:\d+\)/) {
            $mLine =~ /^(\w*).*\s(\d*)\s.*/;
            $mUsername = $1;
            $mPid = $2;
        }
    }
    if (($mUsername eq '') || ($mPid eq '')) {
        print "No display for message output found 1\n";
        return (0);
    }

	print "username: $mUsername PID: $mPid\n";

    my $dbusAddress;

    if ( open(FH, "<", "/proc/$mPid/environ") ) {
        $dbusAddress = do { local $/; <FH> };
        close FH;
    } else {
        print "No display for message output found 2\n";
        return (0);
    }

	print "dbusAddress 1: $dbusAddress\n";

    $dbusAddress =~ /.*?(DBUS_SESSION_BUS_ADDRESS=unix:path=\/run\/user\/\d*\/bus).*/;
    $dbusAddress = $1;
	
	print "dbusAddress 2: $dbusAddress\n";
    
	if ($dbusAddress eq '') {
        print "No display for message output found 3\n";
        return (0);
    }

    my $mCmd = "sudo -u $mUsername $dbusAddress gdbus call --session --dest=org.freedesktop.Notifications --object-path=/org/freedesktop/Notifications --method=org.freedesktop.Notifications.Notify \"Tomte\" 746530 \"$icon\" '$summary' '$body' '[]' '{\"urgency\": <$urgency>, \"desktop-entry\": <\"tuxedo-control-center\">}' 5000";

	print "mCmd: $mCmd\n";

    `$mCmd`;

    if ($? != 0) {
        print "No display for message output found 4 retValue: $?\n";
        return (0);
    }
    return (1);
}

sub messageLongInstall {
    if ($longInstall == 0) {
        if (messageDesktop('Tomte is installing fixes','Please do not restart or shutdown the system.', 2, 'dialog-warning')) {
            $longInstall = 1;
        }
    }
}

messageDesktop('Restart required', 'Please restart the system for changes to take effect.', 2, 'dialog-warning');

sleep(5);

messageDesktop('TUXEDO Tomte ready', 'TUXEDO Tomte finished applying all the required fixes available for this system.', 1, 'dialog-information');
