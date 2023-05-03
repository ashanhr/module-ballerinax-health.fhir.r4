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

public const string PROFILE_BASE_USCORECARETEAM = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam";
public const RESOURCE_NAME_USCORECARETEAM = "CareTeam";

# FHIR USCoreCareTeam resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Business identifiers assigned to this care team by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
# + note - Comments made about the CareTeam.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - Indicates when the team did (or is intended to) come into effect and end.
# + subject - Identifies the patient or group whose intended care is handled by the team.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + reasonReference - Condition(s) that this care team addresses.
# + language - The base language in which the resource is written.
# + encounter - The Encounter during which this CareTeam was created or to which the creation of this record is tightly associated.
# + participant - Identifies all people and organizations who are expected to be involved in the care team.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + managingOrganization - The organization responsible for the care team.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + name - A label for human use intended to distinguish like teams. E.g. the 'red' vs. 'green' trauma teams.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + telecom - A central contact detail for the care team (that applies to all members).
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + reasonCode - Describes why the care team exists.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + category - Identifies what kind of team. This is to support differentiation between multiple co-existing teams, such as care plan team, episode of care team, longitudinal care team.
# + status - Indicates the current state of the care team.
@r4:ResourceDefinition {
    resourceType: "USCoreCareTeam",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.identifier"
        },
        "note" : {
            name: "note",
            dataType: r4:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.note"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.extension"
        },
        "period" : {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.period"
        },
        "subject" : {
            name: "subject",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "CareTeam.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.modifierExtension"
        },
        "reasonReference" : {
            name: "reasonReference",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.reasonReference"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "encounter" : {
            name: "encounter",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.encounter"
        },
        "participant" : {
            name: "participant",
            dataType: CareTeamParticipant,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.participant"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.contained"
        },
        "managingOrganization" : {
            name: "managingOrganization",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.managingOrganization"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.meta"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.implicitRules"
        },
        "telecom" : {
            name: "telecom",
            dataType: r4:ContactPoint,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.telecom"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.id"
        },
        "reasonCode" : {
            name: "reasonCode",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.reasonCode",
            valueSet: "http://hl7.org/fhir/ValueSet/clinical-findings"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.text"
        },
        "category" : {
            name: "category",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CareTeam.category",
            valueSet: "http://hl7.org/fhir/ValueSet/care-team-category"
        },
        "status" : {
            name: "status",
            dataType: CareTeamStatus,
            min: 0,
            max: 1,
            isArray: false,
            path: "CareTeam.status",
            valueSet: "http://hl7.org/fhir/ValueSet/care-team-status"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type USCoreCareTeam record {|
    *r4:DomainResource;

    RESOURCE_NAME_USCORECARETEAM resourceType = RESOURCE_NAME_USCORECARETEAM;

    BaseUSCoreCareTeamMeta meta = {
        profile : [PROFILE_BASE_USCORECARETEAM]
    };
    r4:Identifier[] identifier?;
    r4:Annotation[] note?;
    r4:Extension[] extension?;
    r4:Period period?;
    r4:Reference subject;
    r4:Extension[] modifierExtension?;
    r4:Reference[] reasonReference?;
    r4:code language?;
    r4:Reference encounter?;
    CareTeamParticipant[] participant;
    r4:Resource[] contained?;
    r4:Reference[] managingOrganization?;
    string name?;
    r4:uri implicitRules?;
    r4:ContactPoint[] telecom?;
    string id?;
    r4:CodeableConcept[] reasonCode?;
    r4:Narrative text?;
    r4:CodeableConcept[] category?;
    CareTeamStatus status?;
|};

@r4:DataTypeDefinition {
    name: "BaseUSCoreCareTeamMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseUSCoreCareTeamMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# FHIR CareTeamParticipant datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - Indicates when the specific member or organization did (or is intended to) come into effect and end.
# + role - Indicates specific responsibility of an individual within the care team, such as 'Primary care physician', 'Trained social worker counselor', 'Caregiver', etc.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + member - The specific person or organization who is participating/expected to participate in the care team.
# + onBehalfOf - The organization of the practitioner.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "CareTeamParticipant",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CareTeam.participant.extension"
        },
        "period": {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates when the specific member or organization did (or is intended to) come into effect and end.",
            path: "CareTeam.participant.period"
        },
        "role": {
            name: "role",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Indicates specific responsibility of an individual within the care team, such as 'Primary care physician', 'Trained social worker counselor', 'Caregiver', etc.",
            path: "CareTeam.participant.role"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CareTeam.participant.modifierExtension"
        },
        "member": {
            name: "member",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The specific person or organization who is participating/expected to participate in the care team.",
            path: "CareTeam.participant.member"
        },
        "onBehalfOf": {
            name: "onBehalfOf",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The organization of the practitioner.",
            path: "CareTeam.participant.onBehalfOf"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CareTeam.participant.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type CareTeamParticipant record {|
    r4:Extension[] extension?;
    r4:Period period?;
    r4:CodeableConcept role;
    r4:Extension[] modifierExtension?;
    r4:Reference member;
    r4:Reference onBehalfOf?;
    string id?;
|};

# CareTeamStatus enum
public enum CareTeamStatus {
   CODE_STATUS_INACTIVE = "inactive",
   CODE_STATUS_PROPOSED = "proposed",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_SUSPENDED = "suspended"
}

