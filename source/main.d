module main;

import std.stdio;
import std.regex;

void main(string[] args)
{
	if (args.length < 2)
	{
		stderr.writeln("give me text to escape");
		return;
	}

	size_t n;

	foreach (string s; args[1 .. $])
	{
		if (n++ > 0)
		{
			stdout.write("\n");
		}

		stdout.write(escaper(s));
	}
}