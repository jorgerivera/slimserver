package Slim::Plugin::AppGallery::Plugin;

# $Id$

use strict;
use base qw(Slim::Plugin::OPMLBased);

sub initPlugin {
	my $class = shift;

	$class->SUPER::initPlugin(
		feed   => Slim::Networking::SqueezeNetwork->url( '/api/appgallery/v1/opml' ),
		tag    => 'appgallery',
		node   => 'home',
		weight => 80,
	);
}

1;