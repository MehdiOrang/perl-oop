#!/usr/bin/perl
package Employee;

#require Exporter;
#our @ISA = ("Exporter");
#our @EXPORT = qw(Employee);

#export PERL5LIB=readlink -f <package directory>
#perl -I <package path> <perl file>
#source ~/.bashrc

sub new{
	my $class = shift;
	print "Creating new $class\n";

	my $self =  {};
	bless $self;
	$self->{"name"}= "";
	$self->{"id"} = "";
	$self->{"age"} = 0;
	$self->{"salary"} = 0;
	return $self;
}

sub new_v2{
	shift @_;
	my $self = {};
	$self->{name}=shift;
	$self->{id}=shift;
	$self->{age}=shift;
	bless $self;
}

sub new_v3{
	shift @_;
	my $self = {@_};
	bless $self;
}

sub set_name{
	my $self = shift;
	my $value = shift;
	$self->{"name"} = $value;
# perl subs return the last expression implicity
}

sub get_name_v3{
	my $self = shift;
	$self->{"name"};
}

sub get_name{
	my $self = shift;
	return $self->{"name"};
}

sub name {

	my $self = shift;
	if(scalar(@_)== 1){
		$self->{"name"} = shift;
	}
	return $self->{"name"};
}

1
