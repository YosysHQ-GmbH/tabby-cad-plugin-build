#include "kernel/yosys.h"

USING_YOSYS_NAMESPACE
PRIVATE_NAMESPACE_BEGIN

struct HelloWorldPass : public Pass {
	HelloWorldPass() : Pass("hello") { }
	void execute(vector<string>, Design*) override {
		log("Hello World!\n");
	}
} HelloWorldPass;

PRIVATE_NAMESPACE_END