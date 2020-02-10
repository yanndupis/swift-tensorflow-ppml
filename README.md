# Privacy-Preserving Machine Learning with Swift TensorFlow

The purpose of this repository is to provide a series of privacy-preserving machine learning toy examples using Swift Tensorflow. The first technique we are looking into is secure computation (MPC). [Federated learning](https://en.wikipedia.org/wiki/Federated_learning) and [differential privacy](https://en.wikipedia.org/wiki/Differential_privacy) examples will be added in the future. 

## Why experiment with Swift TensorFlow?

Even though, it's still the early days for Swift TensorFlow, it has lot of key features to build complex systems, combining cryptographic techniques such as secure computation and machine learning. With Swift TensorFlow you get the benefits of a type-safe language, C and PyThon interoperability, and a very performant numeric library with future XLA and MLIR support. Swift also gives you the ability to work in a single language from high abstraction to low level (assembly). If you want to learn more about the potential of Swift TensorFlow, there is an [excellent presentation](https://docs.google.com/presentation/d/1dc6o2o-uYGnJeCeyvgsgyk05dBMneArxdICW5vF75oU/edit#slide=id.g512a2e238a_117_0) from Fast.ai.

## Learning more about Swift TensorFlow
If you are looking for an ambitious project using Swift TensorFlow, you should check out the [swiftai library](https://github.com/fastai/swiftai) and their [amazing course](https://www.youtube.com/watch?v=3TqN_M1L4ts&t=5491s). To get started, Swift TensorFlow also provides this [tutorial](https://www.tensorflow.org/swift/tutorials/model_training_walkthrough).

## Secure Computation Example: Encrypted Inference

Secure computation gives the amazing ability to compute on encrypted data. Using this cryptographic technique combined with machine learning, you could, for example, provide [diabetic retinopathy diagnoses](https://about.google/intl/en_us/stories/seeingpotential/) in the cloud without having to decrypt the retina image at any point during the process. If you want to learn more encrypted machine learning with the secure computation protocol(MPC), you can read this [excellent blog post](https://mortendahl.github.io/2017/04/17/private-deep-learning-with-mpc/) from [Morten Dahl](https://twitter.com/mortendahlcs?lang=en) and [TF Ecnrypted](https://github.com/tf-encrypted/tf-encrypted).

In the notebook [Encrypted-Inference.ipynb](secure_computation/Encrypted-Inference.ipynb), you will find an example where we perform inference on encrypted MNIST digit images. Even the model is encrypted. The MPC protocol is implemented from scratch in this notebook [encrypted_tenso.ipynb](secure_computation/encrypted_tensor.ipynb). 


## Installation
Installation and `/tools` were taken from the [fastai/swiftai](https://github.com/fastai/swiftai) library, which enables quick development and experiments with Swift TensorFlow.

To run the notebooks, run the following command to start the docker container:

```
make jupyter
```
