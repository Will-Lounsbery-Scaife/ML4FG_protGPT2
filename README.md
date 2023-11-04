# NanoGPT2: De novo nanobody sequence generation using a fine-tuned protein language model
This repo contains the associated code and results for the NanoGPT2 project.

# Fine-Tuning
- Google colab was utilized to generate and execute **protGPT_small.ipynb**
- A supporting Python script, **run_clm.py**, was utilized to facilitate the fine-tuning process
- Training and validation dataset are available upon request, as they are too large to upload to Github.

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

# Perplexity Scoring
- Google Colab was utilized to generate and execute **Perplexity.ipynb**
- The default T4 GPU 15 GB runtime was utilized in Colab
- The output of the NanoGPT2 and ProtGPT2 sequence generation for each of the 3 inputs are included as text files
- For the Nanobody 7OM4, the NanoGPT2 output is stored in **ft_seq.txt**. The ProtGPT2 output is stored in **base_seq.txt**.
- For the Nanobody 5JDS, the NanoGPT2 output is stored in **ft_seq_2.txt**. The ProtGPT2 output is stored in **base_seq_2.txt**.
- For Nanobody 5my6, the NanoGPT2 output is stored in **ft_seq_3.txt**. The ProtGPT2 output is stored in **base_seq_3.txt**.
