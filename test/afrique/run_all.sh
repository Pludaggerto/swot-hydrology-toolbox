source clean.sh
cd $SWOT_HYDROLOGY_TOOLBOX/test/afrique
python $SWOT_HYDROLOGY_TOOLBOX/sisimp/proc_sisimp.py rdf/parameter_sisimp.rdf

## River processing
python $SWOT_HYDROLOGY_TOOLBOX/scripts/l2pixc_to_rivertile.py output/simu output/river rdf/parameter_river.rdf 

## Lake Processing
python $SWOT_HYDROLOGY_TOOLBOX/scripts/rivertile_to_laketile.py $SWOT_HYDROLOGY_TOOLBOX/test/afrique/output/river $SWOT_HYDROLOGY_TOOLBOX/test/afrique/output/lake $SWOT_HYDROLOGY_TOOLBOX/test/afrique/rdf/parameter_laketile.cfg --nogdem
