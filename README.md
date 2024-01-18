# hierarchical-inference-demo

This is a set of videos I use to illustrate how hierarchical inference works, and to highlight a few pitfalls of population fitting.

## Step 1. Draw perfect measurements

We start with some ensemble distribution of things (compact binary masses, people heights, locations, etc.), whose distribution is plotted on the left panel.
As experimenters, we do not actually know this ensemble in advance, but rather can repeatedly make *draws* from this distribution (i.e. repeatedly detecting compact binaries).

This video illustrates the act of taking $N=120$ discrete observations from the distribution on the left; these observations are collected on the right-hand panel.
Crucially, in this starting example we make *perfect measurements*, with no uncertainties or errors.

https://github.com/gw-gallery/hierarchical-inference-demo/assets/11800515/2d0a5398-7fae-43c3-a255-3fc93fcc8b90

## Step 2. Population reconstruction

Now that we've taken all of our measurements, our goal as experimenters is to go backwards and actually reconstruct the underlying distribution on the left.
This figure sets up the problem, with the underlying distribution now shown via a thin dashed line to illustrate our (mock) ignorance of it.

![step_02_errorless_reconstruction_setup](https://github.com/gw-gallery/hierarchical-inference-demo/assets/11800515/b2fb4fd1-9553-4672-be6b-9f0ce7576222)

Now perform the reconstruction.
Specifically, in the case of perfect measurements, as shown here, we can literally just histogram our data to asymptotically reconstruct the underlying distribution.
Problem solved!

https://github.com/gw-gallery/hierarchical-inference-demo/assets/11800515/de35c20a-3975-462c-9f09-ce88c3543620

## Step 3. Uncertain measurements

Unfortunately, real life isn't so simple.
In GW astronomy in particular, we make measurements whose uncertainties are comparable in width to the underlying population itself.
Illustrate this by repeating the "observations" in Step 1, but now with uncertainties.

https://github.com/gw-gallery/hierarchical-inference-demo/assets/11800515/35470706-2e44-4916-84f1-0e56a5e1f6ca

## Step 4. Naive reconstruction using the "stacking" method

Now, with our set of uncertain measurements, how do we go about reconstructing the underlying population?
When encountering this problem for the first time, a common tactic is to just try directly "stacking" the uncertain measurements as an extension to the direct histogram above.
What happens when we try this?

https://github.com/gw-gallery/hierarchical-inference-demo/assets/11800515/3b55fe3a-afc8-46cc-b569-ae79835518f1

## Step 5. Proper reconstruction using hierarchical inference

As we saw above, stacking didn't work!
Instead, the right way to reconstruct the underlying population is through hierarchical inference.
Each frame in the below video shows updated inference on the underlying distribution as more events are added.
Specifically, inference is performed assuming a parametrized model, in which the underlying distribution is assumed to be a mixture of two Gaussians:

$$
p(x|\mu_1,\sigma_1,\mu_2,\sigma_2,f) = \frac{f}{\sqrt{2\pi\sigma_1^2}} e^{-(x-\mu_1)^2/2\sigma_1^2} + \frac{1-f}{\sqrt{2\pi\sigma_2^2}} e^{-(x-\mu_2)^2/2\sigma_2^2}
$$

We see that this approach *does* converge to the right answer.

https://github.com/gw-gallery/hierarchical-inference-demo/assets/11800515/46b91ca6-8a72-47f7-bb56-1a59b94379e6



