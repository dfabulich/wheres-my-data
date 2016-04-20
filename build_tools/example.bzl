def _impl(ctx):
    ctx.action(
        executable = ctx.executable._build_tools,
        arguments = [
            ctx.outputs.text.path,
        ],
        outputs = [ctx.outputs.text],
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

