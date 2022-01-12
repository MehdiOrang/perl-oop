#!/usr/bin/perl
package Salary;

@ISA = qw(Employee);

sub new{
	shift @_;
	my $self = Employee->new_v3(@_);
	bless $self;
}

sub annual_wage{
	my $self = shift;
	return $self->{"salary"} *12;
}

1
