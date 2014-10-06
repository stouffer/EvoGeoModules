% Should we build a macro-scale theory for coevolution? Nope.
% ...
% Sept 11, 2014

**Coevolutionary dynamics acting on both species and their interactions are a key driving force behind the structure of ecological communities. The Geographic Mosaic Theory of Coevolution (GMTC) provides a spatial perspective to these dynamics by proposing the existence of feedbacks between local and regional scales. It remains unclear, however, how the structure of communities at larger spatial scales either influences or is influenced by local coevolutionary processes. _Something here about networks?_ Here we show that the coevolutionary significance of individual interactions is maintained when moving between the local and regional scale. Importantly, this occurs despite the fact that species sorting at the local scale tends to weaken or remove community-wide coevolutionary signal. This apparent mismatch between our interaction-level and community-level results strongly suggests that interactions provide the correct scale to study coevolution at small spatial scales while communities are the relevant scale only at larger spatial extents. Our results provide a new perspective on the interplay between coevolutionary theory and community ecology, by _doing something cooler than providing insight_ and providing insights about the organisational scales at which the different theories have relevance.**

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
  - Key points: i) significantly coevolved interactions are *always* significant even when the network is not detected as such ii) *perhaps a theory for coevolution at large organisational scales is not necessary since species/interactions coevolve, networks don't*

# Data and analysis

- Cite DOI of datasets

- 51 sites, spatial coordinates

- number species, L, Co and distribution of Co locally

- Infos on phylogeny

- Analyzed using PACo @balb13 @buck14

# Point 1 -- Strong hypothesis that macro-evolutionary processes have macro-ecological consequences

- We expect a matching between the scales of eco/evo mechanisms
  - Key refs: @pric03 mostly, also @nieb10
  - Key points: acquisition/loss of interactions is viewed as acquisition of character in cladistics, macro-evo event

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

- Review of mechanisms involved in interactions locally: neutrality and trait-based mechanisms
  - Key refs: Oikos paper, Canard, Olesen, Combes

- These mechanism can only *filter* from a pool of regional interactions
  - Key refs: Biol Lett paper, Olito & Fox, Lounnas, ...
  - Key points: i) even though they will change the network-level signal, contribution of interactions should not vary locally vs. regionally ii) this is the expectation because (a) past knowledge about motifs/evolution and (b) interactions are the unit in which selection takes place, not networks

- Illustration: distribution of the significance in each interaction locally
(measured vs. metaweb) vs. in the regional network.

![figure2]

# Point 3 -- The spatial replication of networks is imperfect

- Ecological processes = sorting of interactions + species
  - Key refs: Ecol Lett &beta;-div
  - Key points: observation of interactions result from filtering through two processes, and not clear they are related to past coevolution = we expect a loss of signal locally

- Illustration: jacknife score vs. observed/possible : there is no relationship
between how important an interaction is (coevo) and how frequent it will
be. suggests that ecological >> evolutionary drivers of local network structure

![figure3]

- This is caused by local ecological processes, but also influences local evolutionary dynamics
  - Key refs: Gomulkiewicz, Hochberg, Benkman, Siepilski
  - Key points: i) Opportunity to integrate more network theory to understand between-sites differences ii) Even though coevo theory recognized variation in effects, very little attention to variation in presence/absence of int and its implications

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

