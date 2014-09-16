% What is the right scale of coevolution over large spatial extents?
% ...
% Sept 11, 2014

# Introduction

- Overview of theory on coevolution, including spatial aspects (GMTC, coevo
in metaco, ...). Outline of four key mechanisms and concepts.

- Difference (more than semantics) in micro-coevolution vs. co-cladogenesis,
brief review of my book chapter.

- Upper limit on organisational scale of the theory, many populations within
a few species. Nuismer papers on landscape coevolution, old-ish review paper
by Urban.

- Large organizational scales for species interactions are well handled by
network representation, also allows description of replicated interactions
(metaweb). Reviews by Proulx, Poulin, Bascompte.

- Known phylogenetic structure in networks, but unclear how it relates to
micro-{eco/evo} processes. Papers by Stouffer, Ekloff, ...

- **Goals of the paper**: Layout map for research bridging coevo with current
structure of ecological networks, or more broadly, assemblages of several
species, using illustrations from empirical dataset

# Dataset used

- Cite DOI of datasets

- 51 sites, spatial coordinates

- number species, L, Co and distribution of Co locally

- Infos on phylogeny

- Analyzed using PACo @balb13 @buck14

# Point 1 -- Strong hypothesis that macro-evolutionary processes have macro-ecological consequences

- We expect a matching between the scales of eco/evo mechanisms

- Interactions well predicted by species traits that evolve slowly (body
size in food webs)

- Show how this influenced the methodological toolkit (virtually all
assumptions derive from Farenholz's rule)

- Illustration: PACo or ParaFit score in the metaweb vs. distributions of
the local webs

![figure1]

- Key references: Desdevises papers on Lamellodiscus, Swafford papers on
mites, Chamberlain et al 2014 Oecologia

# Point 2 -- Interactions respond locally to micro-processes

- Neutrality and trait-based mechanisms

- Illustration: distribution of the significance in each interaction locally
(measured vs. metaweb) vs. in the regional network.

- Key references: Olito & Fox 2014, our Oikos paper, Mike B's papers on
coevolution in connected landscapes, Manon's paper on bacteria-phage networks
in soil.

# Point 3 -- The spatial replication of networks is imperfect

- Caused by local ecological processes, but also influences local evolutionary
ones

- Question the relevance of comparison of within-sites coevolutionary measures

- Illustration: relationship between network dissimilarity and the differences
in coevo strengths, or in dissimilarity to the metaweb vs how stronger/weaker
coevo signal is locally

- Key references : Buckley et al 2014, Canard papers on rodents data,
Parasitology paper

# Point 4 -- Emergent network properties may not respond to evolutionary mechanisms

- Co-occurence constraints: pairs of species have never been observed together,
but the coevolution should be measured on potential-interactions

- Phylogenetic content of modules, look at over-under dispersal, co-occurence
is biased by interactions

- Illustration: Phylogenetic dispersal of species in three largest modules

- Key references: Baskerville on Serengeti food web, Cavender-Barres community
phylogenetics, Koskella papers on bacteria-phage

# Conclusions

- Need to bride ecological networks with co-evolution (understand the impact
of ecology vs. evolution in the local observations)

- Focus on datasets that are spatially replicated, with as good as possible
phylogenies. Ref Buckley, Hearkel.

- Currently local variability is not accounted for by statistical methods,
need to do a better job. See Desdevises chapter on ParaFit 2.0.


[figure1]: ../figures/figure1.pdf "We determined whether a significant matching existed between hosts and parasites phylogenies at each location, using the PACo method. The association matrices used where (i) the *local* (observed) interactions, and (ii) the *regional* (possible, after aggregating all local datasets) ones. Surprisingly, and even though the regional dataset shows a strong co-cladogenetic structure, very few samplign sites show this too; 35 out of 51 communities where found not to be coevolved using either matrices."
