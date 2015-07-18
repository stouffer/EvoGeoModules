---
title: Coevolution leaves a stronger imprint on interactions than on community structure
short: Coevolution in space
bibliography: coevo.bib
author:
  - family: Poisot
    given: Timothée
    affiliation: 1, 2, 3
    email: tim@poisotlab.io
    id: tp
    orcid: 0000-0002-0735-5184
  - family: Stouffer
    given: Daniel B.
    affiliation: 1
    id: ds
affiliation:
  - id: 1
    text: School of Biological Sciences, University of Canterbury, Christchurch, New Zealand
  - id: 2
    text: Département des Sciences Biologiques, Université de Montréal, Montréal, Canada
  - id: 3
    text: Québec Centre for Biodiversity Sciences, Montréal, Canada
keyword:
  - k: markdown
  - k: pandoc
  - k: LaTeX
figure:
  - id: maps
    caption: Spatial distribution of coevolutionary signal across the 51 sites. For each location, we indicate whether or not the structure of regional and local interaction networks is consistent with phylogenetic congruence. The colour of the circle corresponds to regionally significant or non-significant (black and grey, respectively) while the colour of the symbol within corresponds to locally significant or non-significant (black and grey, respectively).
    short: Spatial distribution.
    file: ../figures/figure1.pdf
  - id: contributions
    caption: Distribution of coevolutionary signal at the network and interaction levels. **a**, Networks that have lower coevolutionary signal at the local or regional level are composed of interactions that on average contribute little to coevolution at the continental scale. Dashed lines are the cubic smoothing spline; the two levels of the same networks are linked by solid grey lines. **b**, Overall, interactions observed at the local, regional, and continental scale have equal contributions to coevolutionary signal. Probability density was smoothed using a Gaussian kernel density estimator. Raw probability densities are shown as semi-transparent bars.
    short: Example figure.
    file: ../figures/figure4.pdf
    wide: true
  - id: consistency
    caption: Spatial consistency of an interaction and its contribution to coevolutionary signal. Spatial consistency is defined as the probability of observing an interaction between two species given that they were observed to co-occur. Although statistically significant, there was no biologically meaningful relationship between spatial consistency and an interaction's importance for coevolution in the continental network ($R^2 \approx 0.01$, $\rho = -0.1$, $p \leq 10^{-5}$)
    file: ../figures/figure3.pdf
  - id: scales
    caption: The contribution to coevolutionary signal of the interaction between two species is maintained across scales. For every site, we show the Pearson's correlation between interaction-level coevolutionary signal in the continental network and the same in the local network. The size of each point is proportional to the size of the network, and all correlations are significant at $\alpha = 0.05$ except in the grey shaded area.
    file: ../figures/figure2.pdf
date: Work in progress.
abstract: Coevolutionary dynamics act on both species and their interactions in ways that shape ecological communities. It remains unclear, however, how the structure of communities at larger spatial scales either influences or is influenced by local coevolutionary processes, and how mechanisms acting at these different scales feedback onto one another. Here we show that, although species interactions vary substantially over a continental gradient, the coevolutionary significance of individual interactions is maintained across different scales. Notably, this occurs despite the fact that observed community variation at the local scale frequently tends to weaken or remove community-wide coevolutionary signal. When considered in terms of the interplay between community ecology and coevolutionary theory, our results demonstrate that individual interactions are capable and likely to show a consistent signature of past coevolution even when woven into communities that do not.
---

Ecological interactions often exert important selective pressures on the
species involved. For example, the phenologies of lodgepole pines and
red crossbills respond spatially to the presence of squirrels [@benk03a]
and palm species undergo changes in seed morphology in response to the
extinction of bird dispersing their seeds [@gale13]. Given that interactions
are distributed in similar ways across communities, at both the large or
small scale [@jord03], it can be argued that much ecological structure is
the end result of evolutionary or coevolutionary dynamics between species
[@eklo11;@stou12]. Unfortunately, while the coevolutionary dynamic of pairs
of interacting species has been well described at macro [@van73] and micro
[@gand08] evolutionary timescales, most attempts to understand how they cascade
up to the levels of diversity of both species and interactions found within
empirical communities have been inconclusive [@hemb14]. Moreover, because
coevolutionary dynamics are often presented as a key driving force behind
ecological structure across both time and space [@thom05], it is crucial to
determine the scale at which they are both relevant and quantifiable.

Historically, the evidence for coevolution in taxonomically diverse communities
is quantified as the degree of matching between the phylogenies of two sets of
interacting organisms [@lege02]. This notion builds on the century-old idea
that extant species interact in a way similar to the way their ancestors did
[@fahr13], but it is considerably more restrictive than just phylogenetic
conservation of species' interactions [@reze07; @eklo11] because of additional
higher-order constraints. More explicitly, communities that have assembled by
successive divergence events due to coevolution should display phylogenetic
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

# Methods

## Data source and pre-treatment

We use data on observations of interactions between 121 species of rodents and
205 species of parasitic fleas in 51 locations across Europe [@kras12b] to build
51 species-species interaction networks. Interactions were measured by combing
rodents for fleas, a method that gives high quality data as it has a high power
of detection. To account for differential sampling effort and across site
variations in abundance, we only study the networks' incidence matrices
(presence and absence of interactions). Previous analyses revealed that this
dataset shows significant coevolutionary signal at the continental level
[@kras12a; $p \leq 10^{-4}$, see Methods]. Importantly, it also provides spatial
replication and variability [@cana14] at a scale large enough to capture
macro-ecological processes. This dataset is uniquely suited for our analysis, as
it represents a paradigmatic system in which species-species interactions are
thought to be driven by macro-evolution and co-speciation events [@vern09].

The original dataset gives quantitative interaction strengths (expressed as an
averaged number of parasites per species per host). Quantitative interactions
strength, in this system, were shown to be affected to a very high degree by
local variations in abundance across sampling locations [@cana14], and it
therefore seems unlikely that they reflect macro-ecological processes. For this
reason, we transform all quantitative matrices into bipartite incidence
matrices, in which 1 represents the presence of an interaction, and 0 its
absence.

## Spatial scales and interaction spatial consistency

We define threes scales for the network data and their subsequent
analysis---continental, regional, and local. The continental scale is the
aggregated "metanetwork" which includes all documented interactions between
species from the regional species pool [@pois12c]. Note that although they are
reported as 0, we actually have no information about species pairs that have
never co-occured.

Within each site, the regional scale is given by the subset of metanetwork
formed by the locally present species. Hence the regional networks are always a
perfect subset of the continental network, and do not reflect whether species
were actually observed to interact locally or not. By contrast, the local scale
includes only the interactions that were actually observed in the field at a
given site. Therefore, the local and regional networks always include the same
species, but the local network has only a subset (or, at most, an exact match)
of the interactions in the regional network.

We define the spatial consistency of every interaction as the number of sites in
which the two species involved co-occur. Note that, because of the co-occurence
issue mentioned above, this measure is only defined for species that have been
observed to *interact* at least once.

## Measure of coevolutionary signal

We quantify the strength of coevolutionary signal in terms of the degree of
matching between host and parasite phylogenies, given knowledge of species
interactions. We do so using the *PACo* method [@balb13], which is robust to
variations in number of species and interactions. *PACo* provides measures of
both the network-level congruence (*i.e.*, is the network coevolved?) and the
interaction-level signal (*i.e.*, what is the contribution of each interaction
to the overall coevolutionary signal?). Importantly, and by contrast to previous
methods such as *ParaFit* [@lege02], *PACo* allows measuring the contribution of
every interaction to the network-level signal even though the network shows no
significant coevolutionary signal. As required by *PACo*, the phylogenetic trees
for hosts and parasites were rendered ultrametric (*i.e.*, all species are at
the same distance from the root).

# Results

## Local and regional scale networks show no coevolutionary signal

!{maps}

As host-macroparasite interactions are hypothesized to be both ecologically
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
(see *Supp. Mat. 1* for network-level significance values; \autoref{maps}).

## Coevolutionary signal is predicted by the contribution of interactions

!{contributions}

These results would appear to support the idea that macro-evolutionary
processes such as co-diversification can have consequences at the
macro-ecological level but may not in fact be detectable at finer spatial
scales. On the other hand, system-level differences say little about the
behaviour of individual interactions, despite the fact most coevolutionary
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

## Interactions contributing to coevolution are not more spatially consistent

!{consistency}

Beyond their contribution to coevolution, interactions also ultimately
differ in how frequently they vary when the species involved co-occur
[@olit14]. Once more, the literature on host-parasite interactions
usually assumes that the reason why some interactions are more frequent is
because they reflect a significant past history of coevolution [@mora10]. If
this were true, we should observe a significant, positive correlation
between the probability of observing an interaction and the importance
of that interaction for coevolution at the continental scale (Methods
Summary). Surprisingly, we find that neither is true here since interactions
that are important for coevolution are not more conserved (Fig. 3).

## The contribution of interactions to coevolution is consistent across scales

!{scales}

Ultimately, coevolutionary signal varies across scale because of the
simultaneous variation of species' interactions *and* communities'
phylogenetic tree structure. In a system characterised by substantial
turnover, we would expect the contribution of each separate interaction to
differ across scales as well. Instead, we observe here that interactions that
contribute strongly to coevolutionary signal at the continental scale *also*
show a significant tendency to contribute strongly at the local ($p<0.05$ for
positive correlations in 48 out of 51 networks) and regional (in 47 out of 51
networks), and this observation is independent of network-wide coevolutionary
signal (Fig. 4). Remarkably, this result implies that the remnants of
coevolution are still locally detectable in *individual interactions* even
though coevolution regularly fails to leave its imprint on most local networks.

# Discussion

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

**Acknowledgements.** We thank Juan Antonio Balbuena for discussions about the
*PACo* method, and members of the Stouffer and Tylianakis groups for comments
on an early draft of this manuscript. We are indebted to Matt Hutchinson and
Fernando Cagua for contributions to the code of the `paco` R package. Funding
to TP and DBS was provided by a Marsden Fund Fast-Start grant (UOC-1101) and
to DBS by a Rutherford Discovery Fellowship, both administered by the Royal
Society of New Zealand.


\clearpage

![.](../figures/figure3.pdf)

\clearpage

![](../figures/figure2.pdf)

\clearpage

# References
