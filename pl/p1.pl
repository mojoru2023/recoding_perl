
use CGI qw(:all);

print header(),
	start_html("this is the page title"),
	h1("Input parameters");
	
my $list_items;
foreach my $param (param()){
	$list_items .= li("$param:".param($param));
	}
print ul($list_items);
print end_html();
