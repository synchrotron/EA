[[Architecture Documentation]] > [[Meta Model]] > [[Factsheets]]
 

## Definition
Interfaces are connections between [[Applications]] (not IT Components). They model how data exchange happens between Applications.

## Description
Like a lot in LeanIX the Interface factsheet is a business-oriented view of interfaces. It addresses how [[Data Object]]s are exchanged and how Applications are interconnected. 

It is not a means by which an API can be documented.
#### Subtypes
We have not enabled any sub-types for this factsheet.
#### Model

While a basic Interface can be modelled as shown below. There is an important concept to understand when documenting the Provider and Consumer applications.

![[EAM Metamodel - Interface Model.png]]
This is not to document the direction of data flow (see [[Interface#Properties]]) but ownership of the interface. You may recall the Ball & Socket notation from UML, in this case the ball is the Provider and the socket is the Consumer.

A rule of thumb to use when deciding on which application is the provider and which is the consume is to consider which applications owns the specification for the interface, who dictates changes and who has to comply with those changes. The app that owns these changes is usually the Provider.

## Example

The [4People to Benefits ](https://channel4.leanix.net/Channel4Prod/factsheet/Interface/c1f2caf3-e769-4d61-8abf-19c8fece8313) Interface in LeanIX.

![[EAM Metamodel - Interface Example.png]]
Not that the Benefits Portal is the Provider but the data flows from 4People. This is all detailed in the Properties section of this factsheet.

## C4 Factsheet

### Mandatory Fields
There are no mandatory fields on this factsheet.

### Implementation

#### Tag
Ensure the Interface is tagged with one (and only one) Technology Vertical tags, which can be more challenging for an Interface but it should still reflect the owner of the Interface, not just participants.

#### Properties
- Data flow direction: Is one of: **Incoming** data flows from the consumer to the provider. **Outgoing** data from from the provider to the consumer. **Bi-directional** data from from the provider and the consumer.
- Interface type: One of Synchronous, Asynchronous or Batch
- Frequency: How ofter does is this interface in use, select from the times on offer that best match.

## Factsheet Status
This factsheet is up to date an ready to use.

[[Factsheets| < Prev]]   [[??|Next>]]