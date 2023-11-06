# NanoGPT2: De novo nanobody sequence generation using a fine-tuned protein language model
This repo contains the associated code and results for the NanoGPT2 project.

# Preprocessing
- The INDI antibody dataset is available here: https://research.naturalantibody.com/nanobodies
- The original dataset was downsampled by a factor of 10 and preprocessed using **train_val_split.py**
- Our fine-tuning training and validation datasets are available upon request, as they are too large to upload to Github.

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


# Fine-Tuning
- Google Colab was utilized to generate and execute **protGPT_small.ipynb**. The colab can be accessed at https://colab.research.google.com/drive/13MT6ua8GdwpsEZRPm9loP3ZOXUdvK2Z3?usp=sharing
- A GPU runtime with a single A100 GPU was utilized in Colab to run the file
- A supporting Python script, **run_clm.py**, was utilized to facilitate the fine-tuning process
- The fine-tuned model can be accessed and downloaded here: https://drive.google.com/drive/folders/1BeJFvNb5YqHNZ48VcaN6_iXG0OqqRzVt 


# Perplexity Scoring
- Google Colab was utilized to generate and execute **Perplexity.ipynb**
- The default T4 GPU 15 GB runtime was utilized in Colab to run the file
- The output of the NanoGPT2 and ProtGPT2 sequence generation for each of the 3 inputs are included as text files
- For the Nanobody 7OM4, the NanoGPT2 output is stored in **ft_seq_1.txt**. The ProtGPT2 output is stored in **base_seq_1.txt**. The best 3 sequences (lowest perplexity scores) are available in **ft_seq_top_1.txt**.
- For the Nanobody 5JDS, the NanoGPT2 output is stored in **ft_seq_2.txt**. The ProtGPT2 output is stored in **base_seq_2.txt**. The best 3 (lowest perplexity scores) are available in **ft_seq_top_2.txt**.
- For Nanobody 5my6, the NanoGPT2 output is stored in **ft_seq_3.txt**. The ProtGPT2 output is stored in **base_seq_3.txt**. The best 3 (lowest perplexity scores) are available in **ft_seq_top_3.txt**.
  
