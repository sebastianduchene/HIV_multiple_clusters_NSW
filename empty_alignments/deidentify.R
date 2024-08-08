library(NELSI)

fasta_files <- dir(pattern = "fasta")


for(i in 1:length(fasta_files)){
    f <- read.dna(fasta_files[i], format = "fasta")
    rownames(f) <- paste0("seq_", 1:nrow(f), rownames(f))
    #print(rownames_temp)
    cat("writing", fasta_files[i])
    write.dna(f, file = fasta_files[i], format = "fasta", nbcol = -1, colsep = "")
}
