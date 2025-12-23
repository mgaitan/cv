RENDERCV = uvx --from=rendercv[full] rendercv render
YAML_ES = Martín_E._Gaitán_CV_es.yaml
YAML_EN = Martín_E._Gaitán_CV_en.yaml
OUTPUT_BASE = Martín_E._Gaitán_CV

.PHONY: all es en
all: es en

es:
	LANG=C.UTF-8 LC_ALL=C.UTF-8 $(RENDERCV) $(YAML_ES) -nopng -nomd
	mv "rendercv_output/$(OUTPUT_BASE).pdf" "rendercv_output/$(OUTPUT_BASE)_es.pdf"
	mv "rendercv_output/$(OUTPUT_BASE).typ" "rendercv_output/$(OUTPUT_BASE)_es.typ"

en:
	LANG=C.UTF-8 LC_ALL=C.UTF-8 $(RENDERCV) $(YAML_EN) -nopng -nomd
	mv "rendercv_output/$(OUTPUT_BASE).pdf" "rendercv_output/$(OUTPUT_BASE)_en.pdf"
	mv "rendercv_output/$(OUTPUT_BASE).typ" "rendercv_output/$(OUTPUT_BASE)_en.typ"
