def pi(name, scale = 10, **kwargs):
    native.genrule(
        name = name,
        outs = ["pi_%s.txt" % name],
        cmd = "BC_LINE_LENGTH=99999 bc -l <<< \"scale={scale}; 4*a(1)\" > $@".format(
            scale = scale,
        )
    )
