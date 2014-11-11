---
title: Coevolution acts on interactions but not on communities
author: Timothée Poisot \and Daniel B. Stouffer
date: Oct. 31, 2014
---

**Coevolutionary dynamics act on both species and their interactions to
drive the structure of ecological communities. It remains unclear, however,
how the structure of communities at larger spatial scales either influences
or is influenced by local coevolutionary processes, and how mechanisms acting
at different scales feedback into one another. Most of these feedbacks are
mediated by the structure of ecological interactions, *i.e.* how they are
distributed within communities.  Here we show that, though species interactions
vary substantially over a continental gradient, the coevolutionary significance
of individual interactions is maintained across different scales. Intriguingly,
this also occurs despite the fact that community variation at the local scale
tends to weaken or remove community-wide coevolutionary signal. When considered
in terms of the interplay between coevolutionary theory and community ecology,
our results demonstrate that individual interactions are locally relevant
whereas the emerging structure of these interactions across many species
only becomes relevant at regional scales.**

Ecological interactions exert selective pressures on the species involved;
for example, lodgepole pines and red crossbills phenologies respond
spatially to the presence of squirrels [@benk03a] and palm species undergo
changes in seed morphology in response to the extinction of bird dispersing
their seeds [@gale13]. Most of these interactions are long-standing from
a macroevolutionary point of view [@eklo11], explaining why interactions
are distributed similarly across communities, either at the large [@jord03]
or small [@stou07] scale. Although the evolutionary dynamics of interacting
species pairs has been well described [@gand08], attempts to understand
how these cascade up to generate the tremendous species diversity of both
species and interactions characteristic of empirical communities have been
inconclusive [@hemb14].

Historically, coevolution in taxonomically diverse communities is quantified
as the matching between the phylogenies of two sets of interacting organisms
[@lege02]. This notion builds on the century-old idea that extant species
interact in a way similar to the way their ancestors did [@fahr13]. More
explicitly, communities that assembled through coevolution should (i)
have similar phylogenetic trees and (ii) species at matching positions
in either trees should interact. It is not clear, however, how this idea
stands when confronted to dynamics occurring at smaller scales: indeed,
many ecological and evolutionary processes that occur locally are expected
to blur the phylogenetic signal [@pois15]. One possible reason is the
recently demonstrated fact that interactions display important turnover,
at temporal and spatial scales relevant to ecological dynamics [@pois12c]:
the same two species can interact in different ways under the effect of
local environmental contingencies, spatial mis-match in species phenologies,
variations in population abundances, and chance events [@pois14]. As a
consequence, it is important to assess whether deep evolutionary history
matters at all at the scale where the structure of ecological networks is
relevant to ecological properties.

<!--
TP: I don't think this ¶ is necessary in the final text, but let's keep it
to see the flow at the moment

DBS: I'm so glad you left this note as this was one of my comments. I agree that most of it shouldn't appear as a whole paragraph, but do think that each key idea must appear near the start of the corresponding paragraphs.
-->

In order to better understand the interplay between coevolutionary theory
and community ecology, we study data a dataset of rodent ectoparasites from
Western to Eastern Europe [@kras12b]. These data show high turnover of both
species and their interactions over time, and have well resolved phylogenetic
trees to support a fine analysis of coevolution.

$\dots$to test the following four hypotheses. First, local (observed)
networks do not show evidence of coevolution, whereas the continental-scale
(henceforth regional) system does. Second, the spatial variation of
species interactions is independent from the variation in phylogenetic
diversity. Third, interactions are distributed spatially in a way that is
independent from their evolutionary history. Finally, the contribution of
interactions to coevolution is similar at the local and regional scale.

If ecological mechanisms do reduce evolutionary signal, we expect to detect
coevolution at the continental scale, but not locally. In line with this
hypothesis, coevolution is strong at the continental level [@kras12a]
($p \leq 10^{-4}$) but most local networks show very little evidence of
phylogenetic congruence (Fig. 1). Out of 51 local networks, 35 show no signal
of coevolution, 11 show coevolution when using the regional interactions,
and 12 show coevolution using the local interactions (see *Supp.  Mat. 1*
for network-level significance values). This suggests that macro-evolutionary
processes such as co-diversification have consequences at the macro-ecological
level [@pric03], but may not in fact be detectable at fine spatial scales.

![figure1]

That there is no signal of coevolution implies that species at matching
positions in the tree do not necessarily interact, which can happen if
the variation of species interactions is not tied to the phylogenetic
relatedness of species across space. In this system, the phylogenetic
dissimilarity of both hosts and parasites increases with distance (Fig. 2A),
and we observe the same for the joint variation of species and interactions
(Fig. 2B). In contrast, when we control for the effect of species variation,
we find that the similarity of interactions is independent of both spatial
distance (Fig. 2C) and host or parasite phylogenetic dissimilarity
(Fig. 2D). Therefore, while evolutionary history is tightly linked to
species distribution---since communities close to each other tend to have
related hosts and parasites---these results show that it is also rather poor
predictor of the way in which these species ultimately interact.

<!--I like this result after all!-->

Ecological interactions vary only insofar that there are some locations in
which they *do not* happen -- yet some interactions happen more consistently
than others. The literature on host-parasite interactions usually assumes
that some interactions are more frequent because they reflect a significant
past history of coevolution [@comb01;@mora10]. Should this be the case, the
correlation between the probability of observing an interaction
<!--(the number of times
it is observed, divided by the number of time the two species co-occurred)-->
and the importance of that interaction for coevolution at the continental
scale should be positive and significant. Surprisingly, we find that neither is true here
(Fig. 3). The fact that an interaction is commonly observed does not reflect
past co-evolution, but is most likely explained by local ecological factors:
example mechanisms would be co-distribution of species in environments
in which they can interact [@grav11], positive covariance of traits and
environmental features, or random selection of partners by species with a
wide range of possible interactions [@pois13].

We finally evaluate whether individual interactions contribute equally
to coevolutionary signal in the locals and continental network. An
interaction between two species at matching positions in the two phylogenetic trees should
contribute positively to coevolution, regardless of the overall score of
the community. We find that this is indeed the case: interactions that contribute
strongly to coevolutionary signal at the continental scale *also* contribute
strongly at the local scale (Fig. 4). Remarkably, this result implies that 
coevolution is still detectable in individual *interactions*  even though it does not leave its imprint on most local networks. This is in line with recent results
that established that, although networks are composed of interactions,
both objects seem to have uncoupled behaviors [@olit14].

<!--Discussion 3-->

Overall, the results of our analyses demonstrate that our current understanding of coevolution as the basis of
multi-species interactions scales rather poorly to ecological questions.
Although phylogenetic structure and interactions are largely congruent at the
continental scale, community structure is primarily driven by ecological, and not evolutionary,
constraints. This conclusion is supported by our observations that (i) local networks show no signal of coevolution and
(ii) the strength of coevolution between two species does not predict how
frequently they interact.
<!--
fall when in line with recent conclusions about the
spatial dynamics of species interactions. Although species interactions vary
according to ecological mechanisms [@pois14], and although the identity of
species in a network varies, the overall network *structure* remains constant
over time [@dupo09]. This can suggest higher-order constraints on structure,
or replacement of species by functionally equivalents from the regional
pool.  Ecological networks analysis has often focused on emerging
properties [@blut10] rather than on the building blocks of the networks,
that is species and interactions.
-->
<!--
DBS: I would insert a sentence here the explicitly highlights the interaction-level results.
-->
Above all else and contrary to the oft-repeated point that
coevolution should explain the local structure of interactions [@thom13],
our results suggest that
<!--given the high variance in local interactions,
coupled with the lack of relationship between coevolution and interaction
frequency
-->
local network structure is far more likely to affect coevolution than
the other way around.

# Methods

We study data on observations of interactions between 121 species of
rodents and 205 species of parasitic fleas in 51 locations across Europe
[@kras12b] to build 51 species-species interaction networks.
<!--Individual interactions are aggregated to yield species interaction
networks.-->
We also aggregated thse 51 networks in order to describe the regional "metanetwork" that therefore includes all potential interactions between co-occurring species [@pois12c]. The phylogenetic trese for hosts and parasites were
rendered ultrametric.

We quantified the degree of matching between host and parasite phylogenies given knowledge of species
interactions using the *PACO* method [@balb13]. *PACO* provides measures
of both the network-level congruence (*i.e.*, Is the network coevolved?) and the
interaction-level signal (*i.e.*, What is the contribution of each interaction
to the overall coevolutionary signal?). For each local network, we measure the
strength of coevolution using (i) local observations only and (ii) all possible
interactions between locally co-occuring species (based on the interactions found in the regional metanetwork). Testing both of these networks allows us to separate the effect of species sorting
(regional interactions) and interaction sorting (local interactions).

We quantified the phylogenetic distance between two locations for hosts and
parasites using PCD [@ives10]: this measure accounts for the dissimilarity
of species, corrected for the phylogenetic distance between all species in
the dataset.

# Acknowledgments

Bah!

# References

[figure1]: ../figures/figure1.pdf "We determined whether a significant matching existed between hosts and parasites phylogenies at each location, using the PACo method. The association matrices used where (i) the *local* (observed) interactions, and (ii) the *regional* (possible, after aggregating all local datasets) ones. Surprisingly, and even though the regional dataset shows a strong co-cladogenetic structure, very few samplign sites show this too; 35 out of 51 communities where found not to be coevolved using either matrices."

[figure2]: ../figures/figure2.pdf "TODO"

[figure3]: ../figures/figure3.pdf "TODO"

