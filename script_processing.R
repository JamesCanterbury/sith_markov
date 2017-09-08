require(tidyverse)si
require(rJava)
require(NLP)
require(NLP)
require(openNLP)
require(RWeka)
require(qdap)
require(ggmap) ## perhaps delete. Haven't used yet.
require(markovchain)


word_ann <- Maxent_Word_Token_Annotator()
sent_ann <- Maxent_Sent_Token_Annotator()

##sith_annotations <- annotate(sith_script_lines, list(sent_ann, word_ann))
##sith_doc <-  AnnotatedPlainTextDocument(sith_script_lines, sith_annotations)

person_ann <- Maxent_Entity_Annotator(kind = "person")
location_ann <- Maxent_Entity_Annotator(kind = "location")
organization_ann <- Maxent_Entity_Annotator(kind = "organization")
pipeline <- list(sent_ann,word_ann, person_ann, location_ann, organization_ann)

sith_annotations <- annotate(sith_script_lines, pipeline)
sith_doc <- AnnotatedPlainTextDocument(sith_script_lines, sith_annotations)