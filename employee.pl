#!/usr/bin/perl
use Employee;
use Data::Dumper;

my $worker = Employee->new();
print Dumper($worker);
my $name =  $worker->set_name("ali");
print Dumper($worker);
print $worker->get_name()."\n";
$worker->name("javad");
print $worker->name()."\n";
my $worker2 = Employee->new_v2("Mehdi", "z365", 32);
print Dumper($worker2);
#print $worker22->get_name(); the object type is different, cannot call on it
my $worker3 = Employee->new_v3("name"=>"Kirill", "age"=>32, "id"=>"IdNo" );
print Dumper($worker3);
print $worker3->get_name_v3()."\n";
