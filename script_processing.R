require(tidyverse)
require(rJava)
require(NLP)
require(NLP)
require(openNLP)
require(RWeka)
require(qdap)



word_ann <- Maxent_Word_Token_Annotator()
sent_ann <- Maxent_Sent_Token_Annotator()

sith_annotations <- annotate(sith_script_lines, list(sent_ann, word_ann))
sith_doc <- 