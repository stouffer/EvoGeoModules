Ecological interactions often exert important selective pressures on the
species involved. For example, the phenologies of lodgepole pines and red
crossbills respond spatially to the presence of squirrels [@benk03a]. Likewise,
palm species undergo changes in seed morphology in response to the extinction
of bird dispersing their seeds [@gale13]. Interactions can be lost, too, when
phenologies of the species involved shift [@raff15]. Interactions are, in fact,
so important that the existence of a species has been inferred by the fact
that another species bore traits that matched no other known species: @krit91
relates the discovery of the moth *Xanthopan morganii*, with a proboscis
famously over a foot long, which Darwin predicted would exist based on the
phenology of local plant *Angraecum sesquipedale*. In addition, interactions,
and the emergent structures they define, are distributed in similar ways
across communities at both large or small scales [@jord03]. Together, these
observations suggest that much ecological structure could be the end result of
(co)evolutionary dynamics between species [@eklo11; @stou12]. Unfortunately,
although the evolutionary dynamics of pairs of interacting species have been
well described at macro-evolutionary [@van73] and micro-evolutionary [@gand08]
timescales, most attempts to understand how they cascade up to the levels of
diversity of both species and interactions found within empirical communities
have been inconclusive [@hemb14].

Historically, the evidence for shared evolutionary history in taxonomically
diverse communities relied on the quantification of the degree of matching
between the phylogenies of two sets of interacting organisms, accounting
for the distributions of interactions across the phylogeny [@lege02]. This
notion builds on the century-old idea that extant species interact in a way
similar to the way their ancestors did [@fahr13; @nuis13; @guim11]. Note that
testing these assumptions is related to, but markedly more restrictive than,
testing for phylogenetic conservatism of species' interactions [@reze07;
@eklo11]. This is because of additional, higher-order constraints related
to the shape of both trees at *all* depths [@cave09; @mouq12], because
ancestral evolutionary innovations have a high phylogenetic inertia, and
they carry forward to extant taxa [@vale10; @desd03; @dini08]. In a way,
the true measure of phylogenetic signal of interactions should depend not
only on how they are conserved within the tree of the species establishing
them (*e.g.* parasites, pollinators), but also how these interactions
distribute in the tree of the species receiving them (*e.g.* hosts,
plants). Consequently, many of the systems that have been described as
exhibiting matching phylogenetic structure ultimately deviate from this last
constraint, for a variety of factors that may stem from how other species
evolved and established, lost, or conserved interactions throughout their
joint evolutionary history. Nonetheless, detecting matching phylogenies for
interacting clades indicates that their shared evolutionary history is long
standing and is therefore suggestive that their extant ecological structure
is an outcome of ancestral constraints and/or co-adaptation [@nuis14].

It is important to note further that discovering matching phylogenies do not
mean that coevolutionary dynamics *sensu* *e.g* @thom99 took place at any time.
In fact, coevolution is not expected to necessarily result in matching
phylogenies, nor are matching phylogenies only produced through coevolution
[@poisotchapter]. It follows that community-level measures of phylogenetic
signal, while they *do* quantify how closely interactions are a product of
phylogeny, do not allow to draw conclusions on coevolution. Nevertheless,
*interaction*-level measures are useful, in that, when expressed as the
contribution of interactions to the overall signal, allow to *compare* the
importance of interactions across replicated communities. Communities from the
same regional pool vary because (i) the local species pool is at best a subset
of the regional species pool and (ii) the local interactions are at best a
subset of the interactions in the regional community [@pois15a]. This implies
that (i) the phylogenetic signal in the regional pool will be different from the
signal in the local communities, and (ii) the phylogenetic signal across local
communities will differ. Species sampling and variability of interactions,
however, does no predict (i) how the phylogenetic signal of pairwise
interactions is kept or lost at the scale of the whole community nor (ii)
whether or not this variability is related to changes in the amount of
phylogenetic signal that can be detected locally.

In this manuscript, we analyze a large dataset of over 300 species of
mammalian hosts and their ectoparasites, sampled throughout Eurasia, for
which phylogenetic relationships are known. Using a Procrustean approach
to quantify the strength of mathcing between host and parasite trees
[@balb13], we show that locally sampled communities rarely show strong
matching despite the fact that the overall system does at the continental
scale. We then provide evidence to support the conclusion that the amount
of phylogenetic matching within a local community is predictable based on
the importance of interactions in the *regional* network. We finally show
that the contribution of these interactions to phylogenetic matching is
invariant across scales, and is unrelated to their tendency to vary across
space. The lack of co-phylogenetic structure in local communities suggest
that, while interactions are undeniably important for community assembly,
they might be less so than abiotic factors.

# Methods

## Data source and pre-treatment

We use data on observations of interactions between 121 species of rodents
and 205 species of parasitic fleas in 51 locations across Europe [@kras12b]
to build 51 species-species interaction networks. Interactions were measured
by combing rodents for fleas, a method that gives high quality data as
it has a high power of detection. The dataset also includes phylogenies
for the hosts and the parasites. Previous analyses revealed that this
dataset shows significant co-phylogenetic matching at the continental level
[@kras12a]. Importantly, it also provides spatial replication and variability
[@cana14] at a scale large enough to capture macro-ecological processes. This
dataset is uniquely suited for our analysis, as it represents a thorough
spatial and taxonomic sampling of a paradigmatic system in which interspecific
interactions are thought to be driven by macro-evolution and co-speciation
events [@comb01; @vern09];

The original dataset gives quantitative interaction strengths (expressed
as an averaged number of parasites per species per host). In this system,
quantitative interaction strengths were shown to be affected to a very
high degree by local variations in abundance across sampling locations
[@cana14], and it therefore seems unlikely that they reflect macro-ecological
processes. Therefore, to account for differential sampling effort---which
cannot readily be quantified---and across site variations in abundance---which
do not pertain to macro-evolutionary processes---we only study the networks'
bipartite incidence matrices (that is, presence and absence of infection of
hosts by the parasites).

## Spatial scales and interaction spatial consistency

Noting that variation of interactions across locations---which can be
caused by local ecological mechanisms, as opposed to reflecting evolutionary
dynamics---can decrease congruence, we analyze the data at three different
levels which we will refer to as continental, regional, and local. Notably,
the continental level summarizes the complete dataset whereas both the
regional and local levels are location-specific scales.

The first, *continental* interaction data consists of the aggregated "metanetwork"
which includes all documented interactions between species from the regional
species pool [@pois12c].

The second, *regional* interaction data accounts for different species
composition across sites, specifically by testing whether sampling from the
regional species pool affects co-phylogenetic matching. Within each site, the
regional scale is given by the subset of the metanetwork formed by the locally
present species (properly speaking, the induced subgraph of the metanetwork
induced from the nodes of the local network). Hence the regional networks are
always a perfect subset of the continental network, and do not reflect whether
species were actually observed to interact locally or not, but whether they
*can* interact at all. This *regional* network is a baseline estimate derived
from interactions within the species pool, and measures the effect of species
sampling on co-phylogenetic matching.

The third, *local* interaction data also accounts for variation in the
interactions between observed species, in addition to encompassing the
above. In contrast to the regional scale, the local scale includes only
the interactions that were actually observed in the field at a given site.
Therefore, the local and regional networks always include the same species,
but the local network has only a subset (or, at most, an exact match) of
the interactions in the regional network.

We finally define the spatial consistency of every interaction as the number
of sites in which the two species involved co-occur, or simply
\begin{equation}
S_{ij} = \frac{L_{ij}}{C_{ij}}\,,
\end{equation}
the spatial consistency of an interaction $S_{ij}$ between species $i$
and $j$ is measured by dividing the number of locations in which both
are present ($C_{ij}$) and the number of locations in which they interact
($L_{ij}$).  Because $L_{ij} \in [0,C_{ij}]$, this measure takes values in
$[0,1]$. Larger values reflect high spatial consistency.  Note that although
they are reported as 0 (*i.e.* having no interactions), we actually have no
information about species pairs that have never co-occured; this is a common,
but hard to correct, feature of spatially replicated datasets in which species
occurrence varies [@mora15]. Therefore, the values of $S_{ij}$ can only be
defined for species that have been observed to *co-occur* at least once.

## Quantifying co-phylogenetic matching

We quantify the strength of co-phylogenetic matching in terms of the degree
of matching between host and parasite phylogenies, given knowledge of extant
species interactions (at varying spatial scales). We do so using the *PACo*
method [@balb13], which is robust to variations in both number of species and
interactions. *PACo* provides measures of both the network-level congruence
(*i.e.*, is there phylogenetic signal in the species interactions across
the entire network?) and the interaction-level signal (*i.e.*, what is the
contribution of each interaction to the overall signal?). Strong values of
the latter metric reflect *low* contributions to co-phylogenetic matching --
interactions that contribute strongly to phylogenetic congruence have low
*PACo* values. Importantly, and in contrast to previous methods such as
*ParaFit* [@lege02], *PACo* also can be used to meaningfully quantify the
contribution of every interaction to the network-level signal even in cases
where the entire network shows no significant phylogenetic signal.

All values returned by *PACo* are tested for deviation from a random
expectation, generated by applying permutations on the species interaction
networks. Specifically, we applied permutations that maintained the number of
parasites for each hosts, and the number of hosts for each parasites. It has
the effect of measuring whether re-distributing interactions between tree
tips would give rise to the same value. We compared the observed value to
the randomized distribution using a two-tailed statistic: a significant value
indicates that the observed value is unlikely to have been observed by chance,
without pre-specifying whether or not it is larger or smaller than expected.

As required by *PACo*, the phylogenetic trees for hosts and parasites were
rendered ultrametric (*i.e.*, all species are at the same distance from
the root). This has the consequence of losing the temporal component of the
three (which was not available for the parasites in the original dataset),
but standardizes phylogenetic distances in a way that satisfies *PACo*'s
requirements. This introduces the, in our opinion reasonable, hypothesis that
the common ancestor to the parasites was able to infect the common ancestor
of the host.

!{maps}

# Results and discussion

Splitting the datasets at the continental, regional, and local levels delineates
clear quantitative predictions. Should community assembly favor the co-occurence
of evolutionarily linked species pairs, we expect that regional networks will
have a high degree of phylogenetic matching compared with the continental one.
In the contrary, a relatively lower phylogenetic matching would be indicative of
a weaker selection for the co-occurence of evolutionarily tied species pairs. At
the local scale, if interactions between species at matching phylogenetic
positions are conserved, we would expect both a similar or higher level of
phylogenetic matching between the local and the regional scale, and a positive
relationship between the frequency of interaction and its overall importance for
phylogenetic matching. In the contrary, if local assembly proceeds largely
independently from the co-evolutionary history, the relative level of
phylogenetic matching in local networks should be the same as in the regional
networks through a sampling effect, but the frequency of interactions should
bear no relationship to their importance in overall matching.

## Local and regional scale networks show no co-phylogenetic matching

As host-macroparasite interactions are hypothesized to be ecologically
constrained, as a result of their being evolutionary conserved [@comb01], the
congruence observed at the continental level sets the baseline for what would be
expected in local communities. Of course, if ecological mechanisms reduce
co-phylogenetic matching, we should detect this signal at the continental scale
but not locally. Out of 51 sites, 35 show no signal of co-phylogenetic matching
at all, 11 show significant co-phylogenetic matching when using the regional
interactions, and 12 show significant co-phylogenetic matching using the local
interactions (see *Supp. Mat. 1* for network-level significance values;
\autoref{maps}). These results support the idea that macro-evolutionary
processes, such as co-diversification, can have consequences at the
macro-ecological level but may not in fact be detectable at finer spatial
scales.

## Local and regional scale networks have the same relative co-phylogenetic matching

!{relative}

In \autoref{relative}, we relate the relative (z-score transformed) degree of
phylogenetic matching in the local and regional communities. The relationship
between the two is linear (95% confidence interval for the correlation
coefficient $0.914--0.971$). This fits with the hypothesis of local networks
being assembled by a random sampling from regional networks: if the presence of
selection to maintain pairs of species at matching positions in the phylogenies,
the local networks should have a higher degree of phylogenetic matching (through
the filtering acting against species pairs at dissimilar positions).

##Co-phylogenetic matching is predicted by the contribution of interactions

!{contributions}

On the other hand, system-level differences say little about the behavior
of individual interactions. Despite the fact most coevolutionary mechanisms
act at the interaction level [@thom99], most *measures* of it are expressed
at the community level. We observe here that networks with interactions
that are important for co-phylogenetic matching at the continental scale
are also important for co-phylogenetic matching at the local and regional
scales as well (Fig. 3A).  Intriguingly, we also find that the distribution
of individual interactions' contributions to co-phylogenetic matching is
strongly conserved, regardless of the scale at which the interactions are
quantified (Fig. 3B). Because interactions differ in their total contribution
to co-phylogenetic matching, this implies that their distribution across
networks (*i.e.* whether the local network contains a sample of strongly
contributing, or weakly contributing, interactions) is what actually drives
differences in overall co-phylogenetic matching. As such, network-level
co-phylogenetic matching emerges directly from the properties of interactions
and is not a property of the network itself.

## Interactions contributing to co-phylogenetic matching are marginally more spatially consistent

!{consistency}

Beyond their contribution to co-phylogenetic matching, interactions also
ultimately differ in how frequently they vary when the species involved co-occur
[@olit15; @cars14; @troj15]. This can happen, for example, when one of the
partner is able to forage for optimal resources [@betts15]. Once more, the
literature on host-parasite interactions assumes that the reason why some
interactions are more frequent is because they reflect a significant past
history of coevolution [@guim07; @mora10]; that is, the ecological constraints
emerge from the evolutionary conservatism. Using a weighted Pearson's
correlation between the interaction frequency, interaction contribution to
co-phylogenetic matching, and the number of observations of each interaction as
the weight, we observe that this is marginally true ($\rho \approx -0.11$. $t
\approx -5.09$ with weights; $\rho \approx -0.10$, $t \approx -4.6$ without;
both significant at $\alpha = 0.05$). Results are presented in Fig. 3. Recall that the
*negative* correlation here arises from the fact that high interaction-level values in
PACo means *low* contribution to co-phylogenetic signal. Nevertheless, this
result ought to be tempered by the fact that the $R^2$ of both regressions is
close to $0.01$. Consequently, the association between spatial consistency and contribution to
co-phylogenetic signal, while statistically significant, explains so little
variance of either quantities that it is likely of negligible biological importance. This implies that the spatial consistency of an
interaction does not reflect its evolutionary past, but rather (possibly) extant
ecological processes.

## The contribution of interactions to co-phylogenetic matching is consistent across scales

!{scales}

Ultimately, co-phylogenetic matching varies across scale because of the
simultaneous variation of species' interactions *and* communities' phylogenetic
tree structure. In a system characterised by substantial turnover, we would
expect the contribution of each separate interaction to differ across scales as
well. Instead, we observe here that interactions that contribute strongly to
co-phylogenetic matching at the continental scale *also* show a significant
tendency to contribute strongly at the local ($p < 0.05$ for positive
correlations in 48 out of 51 networks) and regional (in 47 out of 51 networks),
and this observation is independent of network-wide co-phylogenetic matching
\autoref{scales}. Remarkably, this result implies that the remnants of
co-phylogenetic inertia are still locally detectable in *individual
interactions* even though shared evolutionary history regularly fails to leave
its imprint on most local networks.

# Conclusions

Overall, the results of our analyses demonstrate that there is a sizeable
gap between our current understanding of host-parasite co-evolution as the
basis of multi-species interactions, its phylogenetic consequences, and
their applicability to ecological questions. Our results suggest that, while
the continental-scale system might show a strong signal of past coevolution
(which was also reported, through different analyses, by other studies of
this system), the quasi-entirety of this signal is lost when species and
their interactions are filtered to assemble local communities. That there
is no further loss of signal from the regional to the local scale strongly
suggests that the loss of signal from the continental to regional scale is due
to species sampling, that proceeds independently of the evolutionary history
of species pairs. Because regional and local networks have the same species,
the difference between them stems for the loss of some species interactions
locally. It would seem that local species pools in this system are driven
more by the interaction between abiotic conditions and species tolerance,
than they are by potential species interactions.

Local networks show little to no signal of co-phylogenetic matching, and the
strength of co-phylogenetic matching that can be ascribed to the interactions
between two species is a surprisingly poor predictor of how frequently they
interact. In contrast to the frequent assumption that phylogenetic structure is
a key driver of community structure [@cave09], these data reveal that this
impact is actually minimal at ecologically relevant spatial scales. And yet,
despite all the above, individual interactions are somehow able to maintain
their co-phylogenetic matching even when the community they are woven into does
not. Thinking more broadly, these discrepancies provide a clear roadmap for
bridging the gap between our appreciation of the role of coevolution and its
empirically measurable outcomes: network structure is the most parsimonious
*mechanism* by which coevolution proceeds, not the imprint coevolution leaves on
ecological communities.

**Acknowledgements.** We thank Juan Antonio Balbuena for discussions about the
*PACo* method, and members of the Stouffer and Tylianakis groups for comments
on an early draft of this manuscript. We thank Scott Nuismer for feedback.
We are indebted to Matt Hutchinson and Fernando Cagua for contributions to
the code of the `paco` R package. Funding to TP and DBS was provided by a
Marsden Fund Fast-Start grant (UOC-1101) and to DBS by a Rutherford Discovery
Fellowship, both administered by the Royal Society of New Zealand.

# References
