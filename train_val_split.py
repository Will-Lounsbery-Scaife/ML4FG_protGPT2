import random

def read_and_shuffle_sequences(filename):
    sequences = []
    current_sequence = ""
    with open(filename, 'r') as f:
        for line in f:
            if line.startswith("<|endoftext|>"):
                if current_sequence:
                    sequences.append(current_sequence)
                current_sequence = "<|endoftext|>\n"
            else:
                current_sequence += line
        if current_sequence:
            sequences.append(current_sequence)
    random.shuffle(sequences)
    return sequences

def write_sequences_to_file(sequences, filename):
    with open(filename, 'w') as f:
        for sequence in sequences:
            f.write(sequence)

sequences = read_and_shuffle_sequences("nanobodies_small.fasta")
train_val_split = 0.85  # 85% training, 15% validation
num_train = int(len(sequences) * train_val_split)
train_sequences = sequences[:num_train]
val_sequences = sequences[num_train:]
write_sequences_to_file(train_sequences, "training_small.txt")
write_sequences_to_file(val_sequences, "validation_small.txt")
