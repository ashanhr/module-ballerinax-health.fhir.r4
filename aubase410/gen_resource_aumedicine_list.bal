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

public const string PROFILE_BASE_AUMEDICINELIST = "http://hl7.org.au/fhir/StructureDefinition/au-medlist";
public const RESOURCE_NAME_AUMEDICINELIST = "List";

# FHIR AUMedicineList resource record.
#
# + resourceType - The type of the resource describes
# + date - The date that the list was prepared.
# + identifier - Identifier for the List assigned for business purposes outside the context of FHIR.
# + note - Comments that apply to the overall list.
# + extension - An Extension
# + code - This code defines the purpose of the list - why it was created.
# + emptyReason - If the list is empty, why the list is empty.
# + subject - The common subject (or patient) of the resources that are in the list if there is one.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + encounter - The encounter that is the context in which this list was created.
# + 'source - The entity responsible for deciding what the contents of the list were. Where the list was created by a human, this is the same as the author of the list.
# + title - A label for the list assigned by the author.
# + sourceRelatedPerson - The related person responsible for deciding what the contents of the list were. This is the same as the author of the list.
# + mode - How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted.
# + entry - Entries in this list.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + orderedBy - What order applies to the items in the list.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + status - Indicates the current state of this list.
@r4:ResourceDefinition {
    resourceType: "List",
    baseType: r4:DomainResource,
    profile: "http://hl7.org.au/fhir/StructureDefinition/au-medlist",
    elements: {
        "date" : {
            name: "date",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.date"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.identifier"
        },
        "note" : {
            name: "note",
            dataType: r4:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.note"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.extension"
        },
        "code" : {
            name: "code",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.code",
            valueSet: "http://hl7.org/fhir/ValueSet/list-example-codes"
        },
        "emptyReason" : {
            name: "emptyReason",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.emptyReason",
            valueSet: "http://hl7.org/fhir/ValueSet/list-empty-reason"
        },
        "subject" : {
            name: "subject",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "encounter" : {
            name: "encounter",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.encounter"
        },
        "source" : {
            name: "source",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.source"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.title"
        },
        "sourceRelatedPerson" : {
            name: "sourceRelatedPerson",
            dataType: r4:Extension,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.extension"
        },
        "mode" : {
            name: "mode",
            dataType: ListMode,
            min: 1,
            max: 1,
            isArray: false,
            path: "List.mode",
            valueSet: "http://hl7.org/fhir/ValueSet/list-mode|4.0.1"
        },
        "entry" : {
            name: "entry",
            dataType: ListEntry,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.entry"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.contained"
        },
        "orderedBy" : {
            name: "orderedBy",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.orderedBy",
            valueSet: "http://hl7.org/fhir/ValueSet/list-order"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.text"
        },
        "status" : {
            name: "status",
            dataType: ListStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "List.status",
            valueSet: "http://hl7.org/fhir/ValueSet/list-status|4.0.1"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type AUMedicineList record {|
    *r4:DomainResource;

    RESOURCE_NAME_AUMEDICINELIST resourceType = RESOURCE_NAME_AUMEDICINELIST;

    BaseAUMedicineListMeta meta = {
        profile : [PROFILE_BASE_AUMEDICINELIST]
    };
    r4:dateTime date?;
    r4:Identifier[] identifier?;
    r4:Annotation[] note?;
    r4:Extension[] extension?;
    r4:CodeableConcept code?;
    r4:CodeableConcept emptyReason?;
    r4:Reference subject?;
    r4:Extension[] modifierExtension?;
    r4:code language?;
    r4:Reference encounter?;
    r4:Reference 'source?;
    string title?;
    r4:Extension sourceRelatedPerson?;
    ListMode mode;
    ListEntry[] entry?;
    r4:Resource[] contained?;
    r4:CodeableConcept orderedBy?;
    r4:uri implicitRules?;
    string id?;
    r4:Narrative text?;
    ListStatus status;
|};

@r4:DataTypeDefinition {
    name: "BaseListMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseAUMedicineListMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org.au/fhir/StructureDefinition/au-medlist"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# ListStatus enum
public enum ListStatus {
   CODE_STATUS_CURRENT = "current",
   CODE_STATUS_RETIRED = "retired",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# ListMode enum
public enum ListMode {
   CODE_MODE_CHANGES = "changes",
   CODE_MODE_WORKING = "working",
   CODE_MODE_SNAPSHOT = "snapshot"
}

# FHIR ListEntry datatype record.
#
# + extension - Description of a change including the reason for change.
# + item - A reference to the actual resource from which data was derived.
# + flag - The flag allows the system constructing the list to indicate the role and significance of the item in the list.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "ListEntry",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: 1,
            isArray: false,
            description: "Description of a change including the reason for change.",
            path: "List.entry.extension"
        },
        "item": {
            name: "item",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "A reference to the actual resource from which data was derived.",
            path: "List.entry.item"
        },
        "flag": {
            name: "flag",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The flag allows the system constructing the list to indicate the role and significance of the item in the list.",
            path: "List.entry.flag"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "List.entry.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "List.entry.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type ListEntry record {|
    r4:Extension extension?;
    r4:Reference item;
    r4:CodeableConcept flag?;
    r4:Extension[] modifierExtension?;
    string id?;
|};

