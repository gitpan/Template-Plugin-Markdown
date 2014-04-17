#!/usr/bin/env perl

use strict;
use Test::More;


my $pkg;
BEGIN {
	$pkg = "Template::Plugin::Markdown";
	use_ok $pkg;
}
require_ok $pkg;

done_testing 2;
