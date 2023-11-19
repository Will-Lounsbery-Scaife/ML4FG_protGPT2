masif_root=$(git rev-parse --show-toplevel)
masif_source=$masif_root/source/
export PYTHONPATH=$PYTHONPATH:$masif_source:.
PDB_ID=$(echo $1| cut -d"_" -f1)
CHAIN1=$(echo $1| cut -d"_" -f2)
#CHAIN2=$(echo $1| cut -d"_" -f3)
# Load your environment here.

# print new line
echo ""
echo ""


# print args
echo "first arg: $1"
echo "second arg: $2"
echo "third arg: $3"
echo "fourth arg: $4"

echo "Starting data_prepare_compute_descriptors_sabdab.sh for: $2"
PPI_PAIR_ID=$3
PDB_ID=$(echo $PPI_PAIR_ID| cut -d"_" -f1)
CHAIN1=$(echo $PPI_PAIR_ID| cut -d"_" -f2)
CHAIN2=$(echo $PPI_PAIR_ID| cut -d"_" -f3)
FILENAME=$2

if [ "$1" == "--file" ]
then
	echo "Running masif site on $2"
	PPI_PAIR_ID=$3
	PDB_ID=$(echo $PPI_PAIR_ID| cut -d"_" -f1)
	CHAIN1=$(echo $PPI_PAIR_ID| cut -d"_" -f2)
	CHAIN2=$(echo $PPI_PAIR_ID| cut -d"_" -f3)
	FILENAME=$2
	mkdir -p data_preparation/00-raw_pdbs/
	cp $FILENAME data_preparation/00-raw_pdbs/$PDB_ID\.pdb
else
	echo "Requires custom file"
    exit 1
fi

if [ -z $CHAIN2 ]
then
    echo "Chain 2 Empty"
    python -W ignore $masif_source/data_preparation/01-pdb_extract_and_triangulate.py $PDB_ID\_$CHAIN1
    python $masif_source/data_preparation/04-masif_precompute.py masif_site $PPI_PAIR_ID
else
    echo "Chain 2 should be empty"
	echo "Chain 2: $CHAIN2"
	echo "Chain 1: $CHAIN1"
    exit 1
fi

python $masif_source/data_preparation/04-masif_precompute.py masif_site $PPI_PAIR_ID
python -W ignore $masif_source/data_preparation/04-masif_precompute.py masif_ppi_search $PPI_PAIR_ID
python -W ignore $masif_source/masif_site/masif_site_predict.py nn_models.all_feat_3l.custom_params $3 $4
python -W ignore $masif_source/masif_site/masif_site_label_surface.py nn_models.all_feat_3l.custom_params $3 $4
python -W ignore $masif_source/masif_ppi_search/masif_ppi_search_comp_desc.py nn_models.sc05.all_feat.custom_params $3 $4
