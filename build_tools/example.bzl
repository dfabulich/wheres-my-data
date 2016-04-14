def _impl(ctx):
    ctx.action(
        inputs = [ctx.executable._build_tools],
        outputs = [ctx.outputs.text],
        command = "{} {}".format(ctx.executable._build_tools.path, ctx.outputs.text.path),
    )

example = rule(
    implementation = _impl,
    attrs = {
        "_build_tools": attr.label(executable=True, allow_files=True, default=Label("//build_tools"))
    },
    outputs = {
        "text": "%{name}.txt",
    }
)

