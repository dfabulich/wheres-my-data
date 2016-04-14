load('/build_tools/example', 'example')

example(
	name='foo',
)

genrule(
    name='bar',
    tools=['//build_tools'],
    outs=['bar.txt'],
    cmd="$(location //build_tools) $@"
)
