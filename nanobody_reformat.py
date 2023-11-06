import pandas as pd

df = pd.read_csv("ngs_sequence.tsv", sep='\t')

with open("nanobodies.fasta", "w") as out_fasta:
    for idx, row in df.iterrows():
        description_line = f">{row['Comma-separated IDS']}"
        out_fasta.write(description_line + "\n")
        
        # Extract and format the sequence
        sequence = row['sequence']
        
        # Write the sequence with 60 characters per line
        for i in range(0, len(sequence), 60):
            out_fasta.write(sequence[i:i+60] + "\n")
        
        out_fasta.write('""' + "\n")
