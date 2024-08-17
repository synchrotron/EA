---
type: topic
status: active
desc: Details who we model Channel 4 business and technology and the processes.
title: Meta Model
feed: show
---
# Channel 4 Meta Model
[[Architecture Documentation]] 

Over the next few pages, I want to give you a good understanding of the meta model we use to build the Enterprise Architecture Model (EAM). The EA team use LeanIX as the tool to build this model, and there is a simple guide to [getting started with LeanIX](/o/p0UoQONEpRXwmXBnlo9u/s/RP7czjZPdA584MkIILuS/enterprise-architecture-model/getting-started-with-leanix) you should familiarise yourself with before diving in. Also we have modified the default model in a few places that we will highlight and explain, for the majority of the model I will point you in the direction of the excellent [LeanIX documentation](https://docs-eam.leanix.net/docs/).

What is an EAM? It's a framework for understanding the structure, behaviour and relationships within an organisation. An EAM serves as a shared language and common view among stakeholders, enabling them to communicate effectively about business strategy, technology infrastructure, and organisational processes. By defining the meta-model of an EAM, we can establish a standardised structure for representing the various aspects of an enterprise's architecture, including its business capabilities, information systems, data flows, and technological foundations.


The Channel 4 EAM Meta Model is depicted below:

![[Assets/EAM Metamodel - Channel 4 Meta Model.png]]

We have increased the number of layers within the model form the default LeanIX model and it's worth explaining each here.

#### Business Influences
Sometimes change comes form other places other than a set of requirements. We have modelled two types of change in new factsheets.
- **[[Business Drivers]]** come in the form Internal or External and may be a regulatory change or a challenge from a competitor.
- **[[Risk]]** Helps us understand how we implement change to reduce risk.

#### Strategy Transformation
We've also adopted  [[Strategy#Business Motivation Model]] , so this domain has been updated:
- **[[Goal]]** These capture the _Vision_ and _Goals_ of any BMM
- **[[Objective]]** As per the LeanIX default, with a new relationship to Goals, to track which objectives deliver which goals.
- **[[Initiative]]** As per the LeanIX default with an additional type: _Tactic_ as part of delivering a BMM. Also not we have used a shortcut notation to depict that fact that an initiative can affect almost every other factsheet (keeping my diagram clean!)
We've also repurposed Platform, into the [[#Application Architecture]] layer

#### Business Architecture
This layer has remained very close to the original LeanIX definition, it contains
- **[[Organisation]]**
- **[[Business Capability]]** This factsheet is critical in understanding the *business* of Channel 4, its well worth look through the ==BCM==. We have added a new relationship that links Business Capability and KPI.
- **[[Business Context]]**

#### Data Architecture
We've separated out this layer, as we've added a new data related factsheet but also as we believe data is an important subject that should be called out separately.
- **[[Data Object]]** As per the LeanIX default, with a new relationship to the new KPI factsheet
- **[[KPI]]** The Key Performance Indicator factsheet has been added to aid the measurement of the business capabilities through the use of a Data Object

#### Application Architecture
The Application Architecture Layer includes the repurposed Platform factsheet
- [[Platform]]  This factsheet has been repurposed to group Applications, Components and Interfaces into a business centric platform e.g. Broadcast Management System (BMS)
- [[Application]] As per LeanIX default
- [[Interface]] As per LeanIX default


#### Technical Architecture
- [[Provider]] as per the LeanIX default, these represent the supplier of an IT Component
- [[IT Component]] as per the LeanIX default
- [[Tech Capability]] this has been renamed from *Tech Category*, the purpoes remains as per the LeanIX default, it help categories what the IT Component does at a technical level.


[[Architecture Documentation | < Prev]]   [[Factsheets|Next (Factsheet)>]]
