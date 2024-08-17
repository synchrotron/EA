---
type: topic
status: active
desc: Details on how an Application is modelled.
title: Application
feed: show
---
[[Architecture Documentation]] > [[Meta Model]] > [[Factsheets]]

This factsheet is very close to the [standard LeanIX definition](https://docs-eam.leanix.net/docs/application-modeling-guidelines). Below is a Channel 4 view.
## Definition
Applications are *logical* systems or programs that process or analyse data to support business tasks, processes, or aspects of our business model.

>[!info] Information
>It's important to recognise a Application models **logical** applications, a good example of this is the [Media Service Provider (MSP)](https://channel4.leanix.net/Channel4Prod/factsheet/Application/b245220d-2a8d-4630-a3f5-e33f1a3c2354) which is currently the service provided by PFT Clear.
## Description
Applications are central to the EAM (it's what the licence model is built on) and as such it links many of the factsheets to one another.

Applications are the tools used by teams (Organisation) to perform business tasks, as part of a Value Chain, which means they support a Business Capability at a high level and a Process (Business Context) at a more detailed level. All applications are made from one or more IT Components, which are likely what you see as the more traditional definition of an application, but in our model  components are software and services. In performing these tasks it is very likely the application works on (CRUD) data, this is modelled at a semantic level. Finally, it is also common  applications 'talk' to each other, this is defined through their Interfaces.

## Subtypes
There are no active sub-types for an Application factsheet.
## Model

Adding an application would expect to have the bear minimum below
![[EAM Metamodel - Application Model (Simple).png]]

Ideally an application shall be modelled as shown below, with the addition of [[Business Capability]] and [[Organisation]] to help build out the context in which the application serves. Also by adding the relation to a [[Tech Capability]] to the IT Component, it will appear in the [[Technical Reference Model]] (TRM)


![[EAM Metamodel - Application Model.png]]

## Example

![[EAM Metamodel - Application Example (Simple).png]]

With a SaaS application it isn't necessary to model the sub-components, but it is generally needed as a Application to model any [[Interface|Interfaces]] is may have.

In most cases it is required that an Application, such as [Advance Scheduling System | LeanIX](https://channel4.leanix.net/Channel4Prod/factsheet/Application/af539ba8-e622-46fc-b561-347dad93d8b6) is modelled in full.

![[EAM Metamodel - Application Example.png]]
## C4 Factsheet

### Mandatory Fields
There are no mandatory fields on this factsheet.

### Modifications
We've extended the Application factsheet in one section.
#### Accessibility
- Accessibility Score: Is a combination of the following fields to provide a single 'score' of the accessibility of the applications.
- Screen Reader: Does the application support screen readers?
- Adjustable Font Size: Can the user adjust the font size to aid reading?
- Tab Function: Has the application been designed with tab navigation?
- Non Standard Resolution: Is the application compatible with non standard screen resolutions?
- High Contrast: Does the application provide a high contrast version?

#### Assessment Metrics
>[!todo] TODO
> Detail the changes added for Assessment Metrics
### Implementation

#### Tag
Ensure the Application is tagged with one (and only one) Technology Vertical tags, reflecting the owner of the Application.
#### Information
Please complete the following (but they are not mandatory)
- Name - the application full name, do not include the supplier name nor the version in this field or use the acronym.
- Alias - used for capture the acronym e.g. A55  
- Description - a concise description to help someone that is not familiar with the app or it's use.

## Factsheet Status
The following need to be resolved, but the factsheet is still useable.

- Assessment Metrics

[[Factsheets| < Prev (Factsheet)]]   [[Business Capability|Next (Business Capability)>]]