#!/usr/bin/perl
use Net::DBus;
my $bus = Net::DBus->session;
my $svc = $bus->get_service('org.freedesktop.Notifications');
my $obj = $svc->get_object('/org/freedesktop/Notifications');
my $id = $obj->Notify('myapp', 0,
                      'dialog-information',
                      'Hello world!',
                      'This is an example notification.',
                      [], {}, 0);
