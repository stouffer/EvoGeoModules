---
title: Should we build a macro-scale theory for coevolution? Nope.
author: Timothée Poisot \and Daniel B. Stouffer
date: Oct. 31, 2014
---

**Coevolutionary dynamics acting on both species and their interactions
are a key driving force behind the structure of ecological communities. The
Geographic Mosaic Theory of Coevolution (GMTC) provides a spatial perspective
to these dynamics by proposing the existence of feedbacks between local
and regional scales. It remains unclear, however, how the structure of
communities at larger spatial scales either influences or is influenced by
local coevolutionary processes. Despite this, ecological networks are known
to have an ecological structure, which suggest that coevolution may play a
role in their evolutionary dynamics. Here we show that the coevolutionary
significance of individual interactions is maintained when moving between
the local and regional scale. Importantly, this occurs despite the fact that
community variation at the local scale tends to weaken or remove community-wide
coevolutionary signal. This apparent mismatch between our interaction-level
and community-level results strongly suggests that interactions provide the
correct scale to study coevolution at small spatial scales while communities
are the relevant scale only at larger spatial extents. We provide a new
perspective on the interplay between coevolutionary theory and community
ecology, by establishing the organisational scales at which the different
theories have relevance. Although it has been tempting so far to understand
how coevolution relates to network structure, our results suggest that the
way forward is to understand how network structure may affect coevolution
over space instead.**

Ecological interactions introduce selective pressures on the species
involved. At large organisational scales, this results in taxonomic boundaries
delineating groups of interacting species [@eklo11], invariant structures in
some ecological communities [@nuis13,@jord03], and conservatism of both the
distribution of community modules [@stou05] and the role of species occupy
within them [@stou12]. Although the evolutionary dynamics for a pair of
interacting species has been well described [@thompson], attempts to understand
how these mechanisms cascade up to generate species diversity observed in
large ecological networks have been inconclusive [@hemb14;@yode10], despite
the well known effect of antagonistic coevolution on genomic diversification
[@pate10;@buck06]. The scales at which these diversities happen are hard to
reconcile: coevolution is expressed within patches connected by gene-flow
[@broc07c;@nuis03;@benk03a], whereas the species diversity of complex networks
is typically observed at spatial scales matching the species distribution
[@have92;@basc09a]. Because these scales differ by orders of magnitude,
one must question the relevance of previous calls to scale the theory on
coevolution up to multi-species systems covering large spatial extents
[@urban].

Network-based approaches [@prou05;@dunn06], on the other hand, were designed
to study and describe species-rich systems. Previous empirical findings
revealed the impact of evolutionary dynamics on overall network structure
in food webs [@eklo11;@stou07], pollination networks [@cham14;@vamo14], and
host-parasite networks [@desd02a;@hafn95]. Both micro [@hall10a;@jord03]
and macro [@roop12;@dunn08] evolutionary dynamics have been measured or
modelled in species-rich communities, but there is no understanding of how,
or even of whether, local/micro-evolutionary and regional/macro-evolutionary
feedback into one another.  Another layer of complexity is that ecological
networks are known to vary in their structure over time and space [@pois14]:
the same two species will not interact in a consistent way locally, either
because of local environmental contingencies, by chance, or because their
phenologies do not positively covary in space [@devi12]. As a consequence,
*locally*, the evolutionary signal on network structure is expected to be
buried under much ecological noise, and the effect of coevolution can only
be inferred *regionally*.

In multi-species systems that typically span a large taxonomic range,
coevolution is often measured as the matching between the phylogenies of two
sets of interacting organisms [@desd02a;@lege02]. This build on the century-old
ideas that extant species interact in a way similar to the way their ancestors
did [@fahr13]. "Coevolved" systems should (i) have approximately similar
phylogenetic trees and (ii) species at matching positions in either trees
should interact. It is not clear, however, how this idea relates to dynamics
occurring at smaller scales [@pois15]: many ecological and evolutionary
processes that occur locally, or over small spatial scales, can disturb this
expected structure. Notably, it has been shown that species interactions
are not consistent through space [@pois12c;@pois14]. Local loss of both
interactions and species from the regional pool is most likely to result in
observed communities that do not appear to have been shaped by coevolution.

We use data on ectoparasites of rodents from Western to Eastern Europe
[@kras12b] to test the following four hypotheses. First, local species
assemblages do not show evidence of coevolution even though the system
has a whole does. Second, interaction-level coevolutionary signal is
conserved. Third, interaction-level coevolutionary signal does not predict the
spatial consistency of interactions. We do so by coupling two novel methods:
the *PACO* algorithm for detection of phylogenetic congruence [@balb13],
and a general framework for the variation of ecological networks [@pois12c].

<!--Result 1-->

Local observations on the 51 localities (*Supp. Mat. 1*) are aggregated
into a regional metanetwork [@pois12c], and the two phylogenetic trees have
been rendered ultrametric (see Suppl. Methods). We use *PACO* [@balb13]
to measure the congruence between trees knowing the interactions. *PACO*
yields a network-level significance value for the likelihood that hosts
and parasites have coevolved. For each local network, we measure the
strength of coevolution using (i) only local observations and (ii) all
possible interactions between local species (as known from the regional
aggregation of all local networks). This allows us to separate the effect
of species sorting (regional interactions) and interaction sorting (local
interactions). At the regional scale, coevolutionary signal is extremely
strong ($p \leq 10^{-4}$), as established by previous analysis of this system
[@kras12a]. Most local networks, on the other hand, show very little evidence
of phylogenetic congruence. Out of 51 local networks, 35 show no signal
of coevolution, 11 show coevolution when using the regional interactions,
and 12 show coevolution using the local interactions (see *Supp.  Mat. 1*
for network-level significance values). **Figure?**.

![figure1]

<!--Result 2-->

This suggests that macro-evolutionary processes (such as co-diversification)
have consequences at the macro-ecological level [@pric03], but may not be
detected at finer spatial scales due to a stronger effect of ecological
processes locally. *PACO* permits the analysis of *how strongly* each
interaction contribute to coevolution, in a way that is as independent as
possible from other interactions. As interactions vary only insofar that there
are some locations in which they *do not* happen, we expect that the overall
contribution of interactions will be the same in the local and regional
networks. For the 5 networks that show evidences of coevolution accounting
both for species and interactions sorting, we measured the contribution of
each interaction locally, and compared it to its contribution to the regional
network. Results are presented in **FIG**. **one-sentence summary**. This is
a key result, as it establishes that although coevolution does not leave an
imprint on local networks, it is still detectable in *interactions*. This is in
line with recent results that established that, although networks are composed
of interactions, both objects seem to have uncoupled behaviors [@olit14].

<!--Result 3-->

Species interactions vary in a way that is independent from species
distribution [@pois12c].  One possible explanation is that species that
have a strong (coevolutionary) relationship would either co-distribute more,
or interact more frequently when they co-occur. Should it be true, we would
expect that *coevolved species pairs*, or in other words, species involved in
an interaction contributing strongly to the community-wide coevolution, should
be interacting frequently. This would result in a positive association between
the frequency of the interaction (the number of observations of a particular
interaction divided by the number of observations of the tow species together),
and its overall importance for coevolution (here measured in the *regional*
network). As we report in **FIGURE**, we do not find this relationship -- how
strongly an interaction contributes to overall coevolution does not predict
how frequently it will be realized when the two species are put together.

<!--Discussion 3-->

Our results, that (i) local networks show no signal of coevolution and (ii)
the strength of coevolution between two species does not predict how frequently
they interact, fall when in line with recent conclusions about the spatial
dynamics of species interactions. Species interactions vary according to
ecological mechanisms [@pois14]: local population abundance [@cana14], local
mis-matches of phenologies [@oles11a], local micro-environmental conditions
[@pois11b]. And even though network composition varies, the overall network
*structure* remains constant over time [@dupo09], suggesting either (i)
higher-order constraints or (ii) replacement of species by functionally
equivalents from the regional pool. These result show that our current
understanding of coevolution in multi-species interactions does not scale well
to ecological questions -- although phylogenetic structure and interaction show
a strong agreement at the regional scale, the structure of local communities
remains largely driven by ecological constraints. The analysis of ecological
networks has often focused on emerging properties [@blut10] rather than on
the building blocks of the networks, that is species and interactions. As we
report that interactions retain their coevolution signal at either the local
or regional scale, we suggest that they should be the focus of community
ecologists in the future.

<!--Oh boy, this last sentence sucks.-->

# References

[figure1]: ../figures/figure1.pdf "We determined whether a significant matching existed between hosts and parasites phylogenies at each location, using the PACo method. The association matrices used where (i) the *local* (observed) interactions, and (ii) the *regional* (possible, after aggregating all local datasets) ones. Surprisingly, and even though the regional dataset shows a strong co-cladogenetic structure, very few samplign sites show this too; 35 out of 51 communities where found not to be coevolved using either matrices."

[figure2]: ../figures/figure2.pdf "TODO"

[figure3]: ../figures/figure3.pdf "TODO"

