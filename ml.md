---
title: Notes on Machine Learning
---
[Up one Page](index) | [Back to ToC](index)

Use this as a **quick reference**, in case you forget what's what.

## What is Machine Learning?

> Field of study that gives computers the ability to learn without being
> explicitly programmed
>
> -- Arthur Samuel (1959)

> A computer program is said to _learn_ from experience **E** with respect to
> some task **T** and some performance measure **P**, if its performance on
> **T**, as measured by **P**, improves with experience **E**
> 
> -- Tom Mitchell (1998)

Thus for a spam classifier:

  - Classifying emails as spam or not spam is the task **T**
  - Labels for emails are the experience, **E**
  - The fraction of correctly classified emails is the performance **P**

## Supervised Learning

### Linear Regression

Given the "right answer" for each example in the data, predict real-valued output.

The optimization problem here is the following:

$$
\min_{\theta} \frac{1}{2m} \sum_{i = 1}^{m} \left[h(x^{(i)}; \theta) - y^{(i)}\right]^2
$$

where:

  - $x^{(i)}$ is the i-th training example
  - $h(\vec{x}; \theta) = \theta^T \vec{x}$, considering both as column vectors

The way this is written, we are optimizing the squared error function over the
training set.

The easiest way to do optimization the gradient descent method. Basically, move in the
direction of $-\nabla J$ since that will be the direction of fastest _decrease_:

```python
while (not converged) {
    for j = 1:len(theta):
        theta[j] = theta[j] - alpha * J_grad(theta)
}
```

#### Notation

  - $m$: _number of training examples_
  - $\vec{x}$: vector of _"input" features_
  - $\vec{y}$: vector of _"outputs" / targets_.
  - $\theta$: parameters which are to be learned. Usually a vector in this
    setting (WLOG, could be a matrix as well!)
  - $h(\vec{x}; \theta)$: hypothesis function. Along with $\theta$ and a (previously
    unseen) $\vec{x}$, used to predict what will be the output of the machine
    learning algorithm given that input.
  - $\mathcal{J}$: Cost function. A proxy for the performance of the ML
    algorithm on the test set (stuff we haven't 'seen' yet), defined as how
    badly the ML algorithm is performing on the training set (the data we are
    given for learning from).
