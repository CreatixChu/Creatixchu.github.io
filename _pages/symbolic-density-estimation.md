---
title: "Symbolic Density Estimation Through Symbolic Regression: A Decompositional Approach"
subtitle: "Website showcasing our projects that are at the intersection of logic and machine learning"
permalink: /symbolic-density-estimation/
layout: single
classes: wide symbolic-density-page
header:
  overlay_color: "#000"
  overlay_opacity: 0.5
  overlay_filter: "0.5"
  actions:
    - label: "View Paper"
      url: "#overview"
  caption: "AI-Kolmogorov Framework for Symbolic Density Estimation"
---

# Symbolic Density Estimation Through Symbolic Regression: A Decompositional Approach

## Overview

We introduce AI-Kolmogorov, a novel framework for Symbolic Density Estimation (SDES). Although traditional symbolic regression (SR) tools have been effectively used in many settings, they cannot be directly used for density estimation, since the target probability density values are not available from the samples. Traditional SR tools are further limited as they often scale exponentially in the number of input variables and operators, and do not exploit structure inherent in continuous probability density functions.

To address this challenge we introduce a four-stage pipeline: (i) problem decomposition through clustering and probabilistic graphical model structure learning; (ii) support estimation and nonparametric density estimation; (iii) symbolic regression on marginal and conditional distributions; and (iv) warm-started joint expression search using lower-dimensional results.

We demonstrate the efficacy of AI-Kolmogorov on synthetic mixture models, multivariate normal distributions, and two toy problems, one of which is motivated by applications in high-energy physics. We demonstrate that AI-Kolmogorov can rediscover underlying distributions or otherwise explore closed form expressions producing Pareto fronts trading off model complexity and accuracy. Our technique decomposes the problem to mitigate the curse of dimensionality and bridges non-parametric and parametric density estimation. This yields interpretable analytic models that can accelerate scientific discovery.

<div class="abstract-section">

## Abstract

We introduce AI-Kolmogorov, a novel framework for Symbolic Density Estimation (SDES). Although traditional symbolic regression (SR) tools have been effectively used in many settings, they cannot be directly used for density estimation, since the target probability density values are not available from the samples. Traditional SR tools are further limited as they often scale exponentially in the number of input variables and operators, and do not exploit structure inherent in continuous probability density functions. To address this challenge we introduce a four-stage pipeline: (i) problem decomposition through clustering and probabilistic graphical model structure learning; (ii) support estimation and nonparametric density estimation; (iii) symbolic regression on marginal and conditional distributions; and (iv) warm-started joint expression search using lower-dimensional results. We demonstrate the efficacy of AI-Kolmogorov on synthetic mixture models, multivariate normal distributions, and two toy problems, one of which is motivated by applications in high-energy physics. We demonstrate that AI-Kolmogorov can rediscover underlying distributions or otherwise explore closed form expressions producing Pareto fronts trading off model complexity and accuracy. Our technique decomposes the problem to mitigate the curse of dimensionality and bridges non-parametric and parametric density estimation. This yields interpretable analytic models that can accelerate scientific discovery.

</div>

## Introduction

Data-driven approaches such as deep learning-based methods are widely used in modeling complex nonlinear relationships between predictor and target variables. Popular methods tend to be black-box and do not easily yield insight into underlying patterns in the data limiting interpretability. Symbolic Regression (SR) is a family of methods which offer a promising alternative by searching the space of mathematical expressions and parameters to produce interpretable models that reveal useful insights into the structure underlying the data. While SR has seen success in supervised tasks such as function approximation, differential equation discovery, and scientific modeling, extending SR to density estimation introduces unique challenges and remains largely unexplored.

Current methods for density estimation typically belong to one of two categories: Parametric density estimation, which assumes a model for the distribution and selects the best-fitting parameters, and nonparametric density estimation, where no model assumptions are made but at the cost of interpretability since the model parameters have no canonical interpretation. Our work focuses on the problem of Symbolic Density Estimation (SDES), using symbolic regression to discover continuous probability distributions that underlie any given dataset of samples, and effectively bridging the two classical approaches to density estimation.

<div class="method-section">

## Method

### The AI-Kolmogorov Framework

The proposed framework addresses SDES through symbolic regression and proceeds as follows: we first decompose the data via clustering or structure learning; next, we build a nonparametric density estimate and estimate its support; finally, we apply symbolic regression over the estimated support of the distribution, optionally leveraging marginals and conditionals to warm-start the joint search.

**Clustering and Structure Learning**: Clustering can effectively decompose multi-modal distributions when the components have little overlap. The data is segmented into separate unimodal clusters before symbolic regression is employed on each cluster. Individual component distributions can then be additively combined to obtain the symbolic form of the joint distribution.

**Nonparametric Density Estimation**: Nonparametric Density Estimation serves as a crucial bridge between raw data and symbolic regression, producing a black-box model of the unknown distribution that can then be made transparent through symbolic regression.

**Support Estimation**: Support estimation identifies the subset of the input space where the density function is strictly positive, preventing the algorithm from searching for expressions that fit spurious artifacts of the density estimate due to discontinuities at the boundaries of the support.

**Symbolic Regression**: Symbolic regression transforms the nonparametric density estimate into interpretable mathematical expressions. The structure of a joint distribution can be decomposed into a product of marginals and conditionals, which may allow high-dimensional density estimation tasks to be decomposed into simpler univariate symbolic regression problems.

</div>

<div class="results-section">

## Results

We evaluate AI-Kolmogorov to demonstrate its merits and weaknesses on various examples. Our comprehensive experimental evaluation reveals several key insights about the framework's capabilities, limitations, and practical applicability for SDES through symbolic regression.

<div class="key-findings">

### Key Findings

- **Decomposition Strategy**: Shows significant promise in handling high-dimensional probability density estimation problems by breaking them into more manageable sub-problems
- **Clustering Approach**: Successfully identifies well-separated modes in multi-modal distributions, allowing symbolic regression to focus on simpler unimodal components
- **Structure Learning**: Provides multiplicative decomposition strategy that leverages independence relationships between variables
- **Warm-starting Strategy**: Shows benefits in higher dimensions but with nuanced performance across different dimensionalities

</div>

### Experimental Results

Our evaluation includes synthetic datasets sampled from multivariate normal distributions, mixture models, and other toy problems, in addition to systematic analysis of scaling behavior with dimensionality from 2D to 6D. We present ablation studies that evaluate the utility of the proposed problem decomposition techniques.

</div>

<div class="more-info-section">

## More Information

For detailed experimental results, mathematical formulations, and implementation details, please refer to the complete paper. The AI-Kolmogorov framework represents a significant advancement in bridging symbolic regression with density estimation, offering new possibilities for interpretable scientific discovery.

</div>
