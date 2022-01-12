use Employee;
use Salary;

$worker = Salary->new("name"=>"Jamal", "id"=>"JID", "salary"=>500);
print  $worker->get_name_v3()."\n";
print  $worker->annual_wage();
