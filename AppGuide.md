---
title: Statistical Inference Peer Assessment
author: Andrea Carpignani
date: "2023-02-17"
widgets: [mathjax]
output:
  html_document:
    self_contained: no
    keep_md: yes
---



## Purpose of the app

The app shows a Monte Carlo simulation which estimates $\pi$.

## Model

The user selects the number of simulations, $n$, and press "Submit". 

The software creates two sequence of independent random variables $X_1, \dots, X_n$ and $Y_1, \dots, Y_n$, then counts the number $N$ of points of the form $(X_i,Y_i)$ such that $X_i^2 + Y_i^2 < 1$ and returns the ratio
$$
P = 4 \times \dfrac{N}{n}
$$
four times the number of points inside the circle over the total number of simulated points. Since the area is a quarter of a circle with radius $1$, and since the area of this sector is $\frac{\pi}{4}$, this gives an approximation of four times the area of the section, namely $\pi$.

## Use of the App

To use the app, simply type a number between 10 and 10000 and press the button "Submit". The graph will show the points randomly generated in red if they are inside the circle and in black if they are outside the circle, and the approximation of $\pi$ found with the simulation.
