# NanoGPT2: De novo nanobody sequence generation using a fine-tuned protein language model
This repo contains the associated code and results for the NanoGPT2 project.

# Preprocessing
- The INDI antibody dataset is available here: https://research.naturalantibody.com/nanobodies
- The original dataset was downsampled by a factor of 10 and preprocessed using ```train_val_split.py```
- Our fine-tuning training and validation datasets are available here: ```Google drive data link```

Here is a sample of the dataset for reference:
```
VQLVESGGGWVQPGGSLRLSCAASGTIFSVGSMHWYRQVPGKQRELVADITSDGTTNYRD
SVKGRFTISRDNAKNTVYLHMNSLKPEDTAVYSCAATIAAANYGLGPERYDFWGQGTQVT
VSS
<|endoftext|>
EVQLVASGGGLVQPGGSLTLSCAASGSFNSINVMGWYRQVPGKQRELVARITDGGTTNYA
DSVKGRFTISRDNARNTVYLQMNSLKPEDTAVYYCNVMGTTVADGPGHVPDPFGSWGQGT
QVTVSS
<|endoftext|>
VQLVESGGARVQPGDSLRLSCKGSGRTFKPYTMGWFRQPPGKERELVAALGWWDRTTLYV
DAVKGRFTITGDNAKNTLYLQMNSLKPEDTAVYYCAGVNTNVKLTATRYDYWGQGTQVTV
SS
<|endoftext|>
VQLVESGGGLVQPGGSLRLSCAASGFTFANDAMTWVCQAPGKALEGFSRIPLIGGGIPYY
SDSVKGRFTISRDNTQNMLYLQMNNLKPEDTAVYYCAKGFKSTYPRGQGTQVTVS
<|endoftext|>
```


# ProtGPT2 Fine-Tuning
- Google Colab was utilized to generate and execute ```protGPT_small.ipynb```. The colab can be accessed at https://colab.research.google.com/drive/13MT6ua8GdwpsEZRPm9loP3ZOXUdvK2Z3?usp=sharing
- A GPU runtime with a single A100 GPU was utilized in Colab to run the file
- A supporting Python script, ```run_clm.py```, was utilized to facilitate the fine-tuning process
- The fine-tuned model can be accessed and downloaded here: https://drive.google.com/drive/folders/1BeJFvNb5YqHNZ48VcaN6_iXG0OqqRzVt 


# Perplexity Scoring
- Google Colab was utilized to generate and execute ```Perplexity_v2.ipynb```
- De novo nanobody output text files are stored in the ```nanobody_lists``` directory
- The default T4 GPU 15 GB runtime was utilized in Colab to run the file
- The output of the NanoGPT2 and ProtGPT2 sequence generation for each of the 3 inputs are included as text files
- For the Nanobody 7OM4, the NanoGPT2 output is stored in ```ft_seq_7om4.txt```. The ProtGPT2 output is stored in ```base_seq_7om4.txt```.
- For the Nanobody 5JDS, the NanoGPT2 output is stored in ```ft_seq_5jds.txt```. The ProtGPT2 output is stored in ```base_seq_5jds.txt```.
- For Nanobody 5DXW, the NanoGPT2 output is stored in ```ft_seq_5dxw.txt```. The ProtGPT2 output is stored in ```base_seq_dxw.txt```.

# ESMFold: Computing 3-D Structures
- PDB files for top nanobodies are available in the ```pdbs``` directory
- PLY files for top nanobodies are available in the ```plyfiles``` directory
- The script to run ESMFold is ```<SCRIPT NAME>```
- Image renderings for top nanobodies are available in the ```esm_output``` directory

# MaSIF: Interaction affinity scoring
- The scripts to run MaSIF are available in the ```masif_modified_files``` directory
- The best protein-protein interaction affinities for top nanobodies are available in the ```masif_output``` directory

# Paper Figures
- Full size image renderings of the Figures in the Final Paper are available in the ```paper_figures``` directory
  
