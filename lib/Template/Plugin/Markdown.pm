package Template::Plugin::Markdown;

use strict;
use utf8;
use parent qw(Template::Plugin::Filter);
use Text::Markdown qw/markdown/;

our $VERSION = '0.01';

my $FILTER_NAME = 'md2html';

sub init {
	my $self = $_[0];
	$self->install_filter($FILTER_NAME);
	$self;
}

sub filter {
	my $text = $_[1];
	my $html = markdown($text);
	$html;
}

1;
__END__
# ABSTRACT: turns baubles into trinkets

=encoding utf-8

=head1 NAME

Template::Plugin::Markdown

=head1 SYNOPSIS

 	[% USE Markdown %]
 	[% markdowntext = "# Hello, world!" %]
 	[% markdowntext | md2html %]
	# => <h1>Hello, world!</h1>

=head1 DESCRIPTION

Template::Plugin::Markdown is a small filter to convert markdown to html.

=head1 AUTHOR

Vitali Peil E<lt>vitali.peil@uni-bielefeld.deE<gt>

=head1 COPYRIGHT

Copyright 2014- Vitali Peil

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
