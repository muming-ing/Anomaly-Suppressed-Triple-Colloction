# Anomaly-Suppressed-Triple-Colloction
Welcome to the TC-SLAR-Suppression repository! 📚 This repository hosts code implementations of innovative methodologies designed to tackle the intriguing "spike-like anomalous region (SLAR)" phenomenon in Triple Collocation (TC) analysis. Join us in exploring and mitigating the challenges posed by SLAR through cutting-edge solutions.

Triple collocation (TC) is a technique for quantifying uncertainties within three independent datasets, The TC method often include two equal notation : the differential notation and the cov() notation. Both relying on the same assumptions of linearity, orthogonality, and zero cross-correlation. However, practical situations often lead to deviations from these ideal conditions, giving rise to the enigmatic "spike-like anomalous region (SLAR)." This intriguing phenomenon occurs under a specific relationships among αᵢ, βᵢ, the degree of violation of orthogonality assumption(we call it as x,y,z), and degree of violation of zero cross-correlation assumption(we call it as a,b,c). we derive the relationship between the errer of method result and these variables:

$$\delta_(\varepsilon_1 )=\left| \sigma_1 - \hat{\sigma_1} \right| ={-{{a b+{β_1}^2 y z+a  β_3 x+b β_2 x+a β_1 z+b β_1 y-2 β_1 c x-{β_1}^2 c vt+β_2 β_3 x^2-β_1 β_3 x y-β_1 β_2 x z+a β_1 β_3 vt+b β_1 β_2 vt} \over {c+β_3 y+β_2 z+β_2 β_3 vt}}}$$

$$\delta_(\varepsilon_2 )=\left| \sigma_2 - \hat{\sigma_2} \right| ={-{{a c+ {β_2}^2 x z+a β_3  y+a β_2 z-2 b β_2 y+β_2 c x+β_1 c y-b {β_2}^2 vt+β_1 β_3  y^2-β_2 β_3  x y-β_1 β_2 y z+a β_2 β_3 vt+β_1 β_2 c vt} \over {b+β_3 x+β_1 z+β_1 β_3 vt}}}$$

$$\delta_(\varepsilon_3 )=\left| \sigma_3 - \hat{\sigma_3} \right| ={-{{b c+{β_3}^2 x y-2 a β_3 z+b β_3 y+β_3 c x+b β_2 z+β_1 c z-a {β_3}^2 vt+β_1 bt_2 z^2-β_2 β_3 x z-β_1 β_3 y z+b β_2 β_3 vt+β_1 β_3 c vt} \over {a+β_2 x+β_1 y+β_1 β_2 vt}}}$$

where: $vt=<(t-\bar{t})^2>, x=<{t \varepsilon_1}>, y=<{t \varepsilon_2}>, z=<{t \varepsilon_3}>, a=<{\varepsilon_1 \varepsilon_2}>, b=<{\varepsilon_1 \varepsilon_3}>, c=<{\varepsilon_2 \varepsilon_3}>$, 
When the numerator of these 3 relationship approaches 0, SLAR emerges.


In response to these findings, we present two methodologies for suppressing SLAR and enhancing TC accuracy:
1. Additive-Bias-Aware Method: By skillfully addressing the influence of orthogonality and zero cross-correlation assumption violations on αᵢ and βᵢ, this approach effectively mitigates SLAR occurrences.

2. Constrained-Rescaling Method: By strategically limiting the ranges of αᵢ and βᵢ, this methodology successfully curtails SLAR incidents, ensuring consistent performance even in intricate scenarios.

Explore this repository to access the code implementations of these pioneering methodologies, empowering researchers and practitioners to overcome the challenges posed by SLAR in TC analysis.
