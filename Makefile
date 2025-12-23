RENDERCV_CMD = uvx --from=rendercv[full] rendercv render Martín_E._Gaitán_CV.yaml -nopng -nomd

.PHONY: all
all:
	LANG=C.UTF-8 LC_ALL=C.UTF-8 $(RENDERCV_CMD)
