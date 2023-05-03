// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerinax/health.fhir.r4;

public const string PROFILE_BASE_USCOREPROVENANCE = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance";
public const RESOURCE_NAME_USCOREPROVENANCE = "Provenance";

# FHIR USCoreProvenance resource record.
#
# + resourceType - The type of the resource describes
# + ProvenanceAuthor - An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking place.
# + reason - The reason that the activity was taking place.
# + agent - An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking place.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + activity - An activity is something that occurs over a period of time and acts upon or with entities; it may include consuming, processing, transforming, modifying, relocating, using, or generating entities.
# + signature - A digital signature on the target Reference(s). The signer should match a Provenance.agent. The purpose of the signature is indicated.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + ProvenanceTransmitter - The entity that provided the copy to your system.
# + language - The base language in which the resource is written.
# + occurredPeriod - The period during which the activity occurred.
# + recorded - The instant of time at which the activity was recorded.
# + target - The Reference(s) that were generated or updated by the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by the same activity.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + location - Where the activity occurred, if relevant.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + entity - An entity used in this activity.
# + occurredDateTime - The period during which the activity occurred.
# + policy - Policy or plan the activity was defined by. Typically, a single activity may have multiple applicable policy documents, such as patient consent, guarantor funding, etc.
@r4:ResourceDefinition {
    resourceType: "USCoreProvenance",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance",
    elements: {
        "ProvenanceAuthor" : {
            name: "ProvenanceAuthor",
            dataType: r4:BackboneElement,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.agent"
        },
        "reason" : {
            name: "reason",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.reason",
            valueSet: "http://terminology.hl7.org/ValueSet/v3-PurposeOfUse"
        },
        "agent" : {
            name: "agent",
            dataType: ProvenanceAgent,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.agent"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.extension"
        },
        "activity" : {
            name: "activity",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.activity",
            valueSet: "http://hl7.org/fhir/ValueSet/provenance-activity-type"
        },
        "signature" : {
            name: "signature",
            dataType: r4:Signature,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.signature"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.modifierExtension"
        },
        "ProvenanceTransmitter" : {
            name: "ProvenanceTransmitter",
            dataType: r4:BackboneElement,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.agent"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "occurredPeriod" : {
            name: "occurredPeriod",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.occurred[x]"
        },
        "recorded" : {
            name: "recorded",
            dataType: r4:instant,
            min: 1,
            max: 1,
            isArray: false,
            path: "Provenance.recorded"
        },
        "target" : {
            name: "target",
            dataType: r4:Reference,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.target"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.implicitRules"
        },
        "location" : {
            name: "location",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.location"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.text"
        },
        "entity" : {
            name: "entity",
            dataType: ProvenanceEntity,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.entity"
        },
        "occurredDateTime" : {
            name: "occurredDateTime",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Provenance.occurred[x]"
        },
        "policy" : {
            name: "policy",
            dataType: r4:uri,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Provenance.policy"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type USCoreProvenance record {|
    *r4:DomainResource;

    RESOURCE_NAME_USCOREPROVENANCE resourceType = RESOURCE_NAME_USCOREPROVENANCE;

    BaseUSCoreProvenanceMeta meta = {
        profile : [PROFILE_BASE_USCOREPROVENANCE]
    };
    r4:BackboneElement[] ProvenanceAuthor?;
    r4:CodeableConcept[] reason?;
    ProvenanceAgent[] agent;
    r4:Extension[] extension?;
    r4:CodeableConcept activity?;
    r4:Signature[] signature?;
    r4:Extension[] modifierExtension?;
    r4:BackboneElement ProvenanceTransmitter?;
    r4:code language?;
    r4:Period occurredPeriod?;
    r4:instant recorded;
    r4:Reference[] target;
    r4:Resource[] contained?;
    r4:uri implicitRules?;
    r4:Reference location?;
    string id?;
    r4:Narrative text?;
    ProvenanceEntity[] entity?;
    r4:dateTime occurredDateTime?;
    r4:uri[] policy?;
|};

@r4:DataTypeDefinition {
    name: "BaseUSCoreProvenanceMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseUSCoreProvenanceMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# FHIR ProvenanceAgent datatype record.
#
# + who - The individual, device or organization that participated in the event.
@r4:DataTypeDefinition {
    name: "ProvenanceAgent",
    baseType: (),
    elements: {
        "who": {
            name: "who",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The individual, device or organization that participated in the event.",
            path: "Provenance.agent.who"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type ProvenanceAgent record {|
    r4:Reference who;
|};

# ProvenanceEntityRole enum
public enum ProvenanceEntityRole {
   CODE_ROLE_REMOVAL = "removal",
   CODE_ROLE_DERIVATION = "derivation",
   CODE_ROLE_SOURCE = "source",
   CODE_ROLE_QUOTATION = "quotation",
   CODE_ROLE_REVISION = "revision"
}

# FHIR ProvenanceEntity datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + role - How the entity was used during the activity.
# + what - Identity of the Entity used. May be a logical or physical uri and maybe absolute or relative.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "ProvenanceEntity",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Provenance.entity.extension"
        },
        "role": {
            name: "role",
            dataType: ProvenanceEntityRole,
            min: 1,
            max: 1,
            isArray: false,
            description: "How the entity was used during the activity.",
            path: "Provenance.entity.role"
        },
        "what": {
            name: "what",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Identity of the Entity used. May be a logical or physical uri and maybe absolute or relative.",
            path: "Provenance.entity.what"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Provenance.entity.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Provenance.entity.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type ProvenanceEntity record {|
    r4:Extension[] extension?;
    ProvenanceEntityRole role;
    r4:Reference what;
    r4:Extension[] modifierExtension?;
    string id?;
|};

