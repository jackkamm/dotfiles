##   __     __   __           ___
##  |__) | /  \ /__` \ / |\ |  |   /\  \_/
##  |__) | \__/ .__/  |  | \|  |  /~~\ / \
##  =======================================
##
## Syntax Highlighting for computational biology rc.append
## v0.1
##
## Append this to your ~/.zshrc & ~/.bashrc
## to enable source-highlight for less and add
## bioSyntax pipe capability on your command line
##
export HIGHLIGHT="${HIGHLIGHT:-/usr/share/source-highlight}"

#export LESSOPEN="| $HIGHLIGHT/src-hilite-lesspipe-bio.sh %s"
#export LESS=" -R "
#alias less='less -NSi -# 10'
#	-N: add line numbers
#	-S: don't wrap lines (force to single line)
#	-# 10: Horizontal scroll distance

alias bless='LESSOPEN="| $HIGHLIGHT/src-hilite-lesspipe-bio.sh %s" less -R -Si -# 10'

# Explicit call of  <file format>-less for piping data
# i.e:  samtools view -h aligned_hits.bam | sam-less
# Core syntaxes (default)
alias clustal-less='source-highlight -f esc --lang-def=$HIGHLIGHT/clustal.lang --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style | bless'
alias bed-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/bed.lang     --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style   | bless'
alias fa-less='source-highlight      -f esc --lang-def=$HIGHLIGHT/fasta.lang   --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style | bless'
alias fq-less='source-highlight      -f esc --lang-def=$HIGHLIGHT/fastq.lang   --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style | bless'
alias gtf-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/gtf.lang     --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/vcf.style   | bless'
alias pdb-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/pdb.lang     --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/pdb.style   | bless'
alias sam-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/sam.lang     --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style   | bless'
alias vcf-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/vcf.lang     --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/vcf.style   | bless'
alias bam-less='sam-less'

# Auxillary syntaxes (uncomment to activate)
alias fai-less='source-highlight      -f esc --lang-def=$HIGHLIGHT/faidx.lang    --outlang-def=$HIGHLIGHT/bioSyntax.outlang   --style-file=$HIGHLIGHT/sam.style   | bless'
alias flagstat-less='source-highlight -f esc --lang-def=$HIGHLIGHT/flagstat.lang --outlang-def=$HIGHLIGHT/bioSyntax.outlang   --style-file=$HIGHLIGHT/sam.style   | bless'
