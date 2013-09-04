dploy-git
=========

wrapper and configuration for gitreceive that allows deployment using "git push"

about
=====

Basically, this script installs gitreceive and some basic tasks:
  * initializes gitreceive
  * copies over a post-receive handler called 'receiver'
  * configures a default deployment directory using past Digital Pulp conventions
  
That's it.

In the future, it may be part of Digital Pulp deployment scripts called 'dploy'.
