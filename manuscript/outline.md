% What is the right scale of coevolution over large spatial extents?
% ...
% Sept 11, 2014

# Introduction

- Theory on coevolution predicted to result in diversification of interacting species. Yet poorly integrated with ways of describing multi-species systems.
  - Key refs: Yoder & Nuismer, Urban, Thomspon, Jordano, Bascompte (coevol. invariants)
  - Key points: i) coevo -> diversification ii) core mechanisms of GMTC

- There is an upper limit on the scale at which coevo applies: few species, meta-community rather than very large spatial scales: smaller than the distribution of species themselves.
  - Key refs: Nuismer, Brockhurst, Vogwill
  - Key points: Theory will be difficult to scale up because it was designed at small scales, try to propose parallels between mechanisms

- On the other hand, large spatial scales are being better described by network approaches
  - Key refs: Bascompte, Albouy, Baskerville
  - Key pointd: yada yada yada

- Yet there is a clear phylogenetic signal in networks both at the global scale, and within motifs
  - Key refs: Stouffer, Ekloff, some works on cophylogeny
  - Key points: i) macro-structure of networks results from macro-evo processes ii) interactions between pairs of species are conserved too

- In this paper, we study the interaction between local and regional ecological processes in coevolved interactions, show how the disturb our ability to measure coevolution at the local scale, and propose a roadmap to better integrate coevolutionary theory at large spatial/organisational scales
  - Key refs: *none yet* besides data citation
  - Key points: significantly coevolved interactions are *always* significant even when the netowkr is not detected as such

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

- These mechansism *filter* interactions -- even though they will change the
network-level signal, contribution of interactions should not vary locally
vs. regionally (expectation is a positive relationship), and measuring on
potential/realized interactions should not change the result

- Illustration: distribution of the significance in each interaction locally
(measured vs. metaweb) vs. in the regional network.

![figure2]

- Key references: Olito & Fox 2014, our Oikos paper, Mike B's papers on
coevolution in connected landscapes, Manon's paper on bacteria-phage networks
in soil.

# Point 3 -- The spatial replication of networks is imperfect

- Ecological processes = sorting of interactions + species

- Caused by local ecological processes, but also influences local evolutionary
dynamics

- Illustration: jacknife score vs. observed/possible : there is no relationship
between how important an interaction is (coevo) and how frequent it will
be. suggests that ecological >> evolutionary drivers of local network structure

![figure3]

- Key references : Buckley et al 2014, Canard papers on rodents data,
Parasitology paper

# Point 4 -- Emergent network properties may not respond to evolutionary mechanisms

- Co-occurence constraints: pairs of species have never been observed together,
but the coevolution should be measured on potential interactions; the dataset
used to evaluate coevolution is itself incomplete

- Phylogenetic content of modules, look at over-under dispersal, co-occurence
is biased by interactions

- Illustration: Phylogenetic dispersal of species in three largest modules

- Key references: Baskerville on Serengeti food web, Cavender-Barres community
phylogenetics, Koskella papers on bacteria-phage

# Conclusions

- Need to bridge ecological networks with co-evolution (understand the impact
of ecology vs. evolution in the local observations)

- Main advance: coevolutionary dynamics are important at the
continental/regional scale, much less at the local scale

- Focus on datasets that are spatially replicated, with as good as possible
phylogenies. Ref Buckley, Hearkel.

- Currently local variability is not accounted for by statistical methods,
need to do a better job. See Desdevises chapter on ParaFit 2.0.

[figure1]: ../figures/figure1.pdf "We determined whether a significant matching existed between hosts and parasites phylogenies at each location, using the PACo method. The association matrices used where (i) the *local* (observed) interactions, and (ii) the *regional* (possible, after aggregating all local datasets) ones. Surprisingly, and even though the regional dataset shows a strong co-cladogenetic structure, very few samplign sites show this too; 35 out of 51 communities where found not to be coevolved using either matrices."

[figure2]: ../figures/figure2.pdf "TODO"

[figure3]: ../figures/figure3.pdf "TODO"

