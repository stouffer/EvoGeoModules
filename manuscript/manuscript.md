---
title: Coevolution leaves a stronger imprint on interactions than on community structure
author: Timothée Poisot and Daniel B. Stouffer
---

**Coevolutionary dynamics act on both species and their interactions in ways
that shape ecological communities [@thom09;@nuis13]. It remains unclear,
however, how the structure of communities at larger spatial scales either
influences or is influenced by local coevolutionary processes [@nuis03],
and how mechanisms acting at these different scales feedback onto one
another [@urba08]. Here we show that, although species interactions vary
substantially over a continental gradient, the coevolutionary significance
of individual interactions is maintained across different scales. Notably,
this occurs despite the fact that observed community variation at the local
scale frequently tends to weaken or remove community-wide coevolutionary
signal. When considered in terms of the interplay between community ecology and
coevolutionary theory, our results demonstrate that individual interactions
are capable and likely to show a consistent signature of past coevolution
even when woven into communities that do not.**

Ecological interactions often exert important selective pressures on the
species involved. For example, the phenologies of lodgepole pines and red
crossbills respond spatially to the presence of squirrels [@benk03a] and palm
species undergo changes in seed morphology in response to the extinction
of bird dispersing their seeds [@gale13]. Given that interactions are
distributed in similar ways across communities, at both the large [@jord03]
or small [@stou07] scale, it can be argued that much ecological structure
is the end result of evolutionary or coevolutionary dynamics between species
[@eklo11;@stou12]. Unfortunately, while the coevolutionary dynamic of pairs
of interacting species has been well described at macro [@van73] and micro
[@gand08] evolutionary timescales, most attempts to understand how they cascade
up to the levels of diversity of both species and interactions found within
empirical communities have been inconclusive [@hemb14]. Moreover, because
coevolutionary dynamics are often presented as a key driving force behind
ecological structure across both time and space [@thom05], it is crucial to
determine the scale at which they are both relevant and quantifiable.

Historically, the evidence for coevolution in taxonomically diverse communities
is quantified as the degree of matching between the phylogenies of two sets
of interacting organisms [@lege02]. This notion builds on the century-old
idea that extant species interact in a way similar to the way their
ancestors did [@fahr13]. Yet it is considerably more restrictive than just
phylogenetic conservation of species' interactions [@reze07], as it accounts
for higher-order constraints. More explicitly, it is thought that communities
that have assembled by successive divergence events should display phylogenetic
congruence, that is (i) have similar phylogenetic trees and (ii) have species
at matching positions in the trees that tend to interact [@page03].  On the
other hand, many ecological and evolutionary processes that occur locally
are expected to blur community-wide coevolutionary signal [@pois15]. One
possible explanation is that interactions can display substantial turnover
at ecologically relevant temporal and spatial scales [@pois12c]: the same
two species can interact in different ways under the effect of local
environmental contingencies, spatial mismatch in species phenologies,
variations in population abundances, and chance events [@pois14].  It is
unclear, however, whether these mechanisms influence how the coevolutionary
signal within individual interactions should vary across spatial scales.

To answer these questions, we study a dataset of interactions between
rodents and their ectoparasites from 51 sites across Western to Eastern
Europe [@kras12b] (Methods Summary). This dataset is uniquely suited for
this task as it represents a paradigmatic system in which species-species
interactions are thought to be driven by macro-evolution and co-speciation
events [@vern09], and coevolutionary signal is indeed significant at the
continental level [@kras12a] ($p \leq 10^{-4}$; Methods Summary). Importantly,
it also provides spatial replication and variability at a scale large enough
to capture macro-ecological processes.

As host-macroparasites interactions are hypothesized to be both ecologically
constrained and evolutionary conserved [@comb01], the congruence observed at
the continental level sets the baseline for what would be expected in local
communities. Of course, if ecological mechanisms reduce coevolutionary signal,
we should detect coevolution at the continental scale but not locally. Noting
that variation of interactions can decrease congruence, we analyse the data
at two different levels to test these hypotheses: first, we use *regional*
interaction data---which accounts for different species composition
across sites--and second, we use the *local* interaction data---which also
accounts for variation in the interactions between observed these species
(Methods Summary). Out of 51 sites, 35 show no signal of coevolution, 11
show significant coevolutionary signal when using the regional interactions,
and 12 show significant coevolutionary signal using the local interactions
(see *Supp. Mat. 1* for network-level significance values).

These results would appear to support the idea that macro-evolutionary
processes such as co-diversification can have consequences at the macro-
ecological level [@pric03] but may not in fact be detectable at finer spatial
scales. On the other hand, system-level differences say little about the
behavior of individual interactions, despite the fact most coevolutionary
mechanisms act at the interaction level [@thom99]. As might be expected,
we observe here that networks with interactions that are important for
coevolution at the continental scale indeed have more coevolutionary signal
at the local and regional scales alike (Fig. 2A). Intriguingly, we also find
that the distribution of individual interactions' contributions to coevolution
is strongly conserved, regardless of the scale at which the interactions are
quantified (Fig. 2B). Because interactions differ in their total contribution
to coevolution, this implies that their distribution across networks is what
actually drives differences in overall coevolutionary signal. Network-level
coevolutionary signal emerges directly from the properties of interactions
and is not a property of the network itself.

Beyond their contribution to coevolution, interactions also ultimately
differ in how frequently they vary when the species involved co-occur
[@cars14;@olit14]. Once more, the literature on host-parasite interactions
usually assumes that the reason why some interactions are more frequent is
because they reflect a significant past history of coevolution [@mora10]. If
this were true, we should observe a significant, positive correlation
between the probability of observing an interaction and the importance
of that interaction for coevolution at the continental scale (Methods
Summary). Surprisingly, we find that neither is true here since interactions
that are important for coevolution are not more conserved (Fig. 3).

Ultimately, coevolutionary signal varies across scale under the joint variation
of both species interactions and phylogenetic community structure, and so
we expect the contribution of each interaction to differ across scales
too. Nonetheless, we find that interactions that contribute strongly to
coevolutionary signal at the continental scale *also* show a significant
tendency to contribute strongly at the local scale (Fig. 4). Remarkably,
this result implies that the remnants of coevolution are still locally
detectable in *individual interactions* even though it does not leave its
imprint on most local networks.

Overall, the results of our analyses demonstrate that there is a sizeable gap
between our current understanding of coevolution as the basis of multi-species
interactions and its applicability to ecological questions. Local networks
show little to no signal of coevolution and the strength of coevolution
between two species is a surprisingly poor predictor of how frequently
they interact. In contrast to the frequent assumption that phylogenetic
structure is a key driver of community structure [@cave09], these data
reveal that this impact is actually minimal at ecologically relevant spatial
scales. Despite all the above, individual interactions are able to maintain
their coevolutionary signal even when the community they are woven into does
not. Thinking more broadly, these discrepancies provide a clear roadmap
for bridging the aforementioned gap between our appreciation of the role
of coevolution and its empirically measurable outcomes.  Network structure
is the most parsimonious *mechanism* by which coevolution proceeds, not the
imprint coevolution leaves on ecological communities.

# Methods Summary

We use data on observations of interactions between 121 species of rodents
and 205 species of parasitic fleas in 51 locations across Europe [@kras12b]
to build 51 species-species interaction networks. Interactions were measured
by combing rodents for fleas, a method that gives high quality data as it has
a high power of detection. To account for differential sampling effort and
across site variations in abundance, we only study the networks' incidence
matrices (presence and absence of interactions).

In our study, we define threes scales for the network data and analysis---
continental, regional, and local. The continental scale is the aggregated
"metanetwork" which includes all potential interactions between co-occurring
species [@pois12c] (*i.e.*, all species and all their interactions across
the 51 networks). Within each site, the regional scale is given by the list
of observed species and all their possible interactions. Hence the regional
networks are always a perfect subset of the continental network. The local
scale includes only the interactions that were actually observed in the field
at a given site. Therefore, the local and regional networks always include
the same species, but the local network has only a subset (or, at most,
an exact match) of the interactions in the regional network. The spatial
consistency of every individual interaction is measured as the number of
sites in which the two species involved co-occur.

We quantified the coevolutionary signal in terms of the degree of matching
between host and parasite phylogenies given knowledge of species interactions
using the *PACO* method [@balb13], which is robust to variations in number
of species. *PACO* provides measures of both the network-level congruence
(*i.e.*, is the network coevolved?) and the interaction-level signal (*i.e.*,
what is the contribution of each interaction to the overall coevolutionary
signal?). We measured the phylogenetic dissimilarity between two sites for
hosts and parasites using PCD [@ives10], a measure that accounts for the
dissimilarity of species, corrected for the phylogenetic distance between all
species in the dataset. Since it is a requirement of the methods we use here,
the phylogenetic trees for hosts and parasites were rendered ultrametric
(i.e., all species are at the same distance from the root).

# References

**Acknowledgments.** We thank Juan Antonio Balbuena for discussions about the
*PACo* method, and members of the Stouffer and Tylianakis groups for comments
on an early draft of this manuscript. Funding to TP and DBS was provided
by a Marsden Fund Fast-Start grant (UOC-1101) and to DBS by a Rutherford
Discovery Fellowship, both administered by the Royal Society of New Zealand.

![Spatial distribution of coevolutionary signal across the 51 sites. For each location, we indicate whether or nor the structure of regional and local interaction networks is consistent with phylogenetic congruence. The color of the circle corresponds to regionally significant or nonsignificant (black and grey, respectively) while the color of the symbol within corresponds to locally significant or nonsignificant (black and grey, respectively).](../figures/figure1.pdf)

![Distribution of coevolutionary signal at the network and interaction level. **A** Networks that have lower coevolutionary signal are made of interactions that contribute little to coevolution at the continental scale. **B** Interactions in the local, regional, and continental scale have equal contributions to coevolution.](../figures/figure4.pdf)

![Lack of a relationship between the spatial consistency of an interaction and its importance for coevolution in the continental network. Spatial consistency is defined as the probability of observing an interaction between two species given that they were observed to co-occur.](../figures/figure3.pdf)

![Correlation (Pearson's statistic) between the interaction-level contribution to coevolutionary signal at the local and continental scales. All positive correlations are significant with $\alpha = 0.05$. The size of each dot represents the base 10 logarithm of the number of interactions (network size).](../figures/figure2.pdf)
