// AUTO GENERATED
#include <sys/core.h>
namespace View {
void index_html(map<string, string> data) {
cout <<"<html>\n"
	 <<"<title>{{ title }}</title>\n"
	 <<"<head>\n"
	 <<"</head>\n"
	 <<"<body>\n"
	 <<"{{ message }}\n"
	 <<"</body>\n"
	 <<"</html>\n"
	 <<"";
}}
int main() {
	map<string, string> data;
	View::index_html(data);
	return 0;
}