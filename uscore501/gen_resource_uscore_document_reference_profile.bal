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

public const string PROFILE_BASE_USCOREDOCUMENTREFERENCEPROFILE = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference";
public const RESOURCE_NAME_USCOREDOCUMENTREFERENCEPROFILE = "DocumentReference";

# FHIR USCoreDocumentReferenceProfile resource record.
#
# + resourceType - The type of the resource describes
# + date - When the document reference was created.
# + identifier - Other identifiers associated with the document, including version independent identifiers.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + custodian - Identifies the organization or group who is responsible for ongoing maintenance of and access to the document.
# + author - Identifies who is responsible for adding the information to the document.
# + securityLabel - A set of Security-Tag codes specifying the level of privacy/security of the Document. Note that DocumentReference.meta.security contains the security labels of the 'reference' to the document, while DocumentReference.securityLabel contains a snapshot of the security labels on the document the reference refers to.
# + subject - Who or what the document is about. The document can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of farm animals, or a set of patients that share a common exposure).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - Human-readable description of the source document.
# + language - The base language in which the resource is written.
# + masterIdentifier - Document identifier as assigned by the source of the document. This identifier is specific to this version of the document. This unique identifier may be used elsewhere to identify this version of the document.
# + 'type - Specifies the particular kind of document referenced (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the document referenced.
# + content - The document and format referenced. There may be multiple content element repetitions, each with a different format.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + docStatus - The status of the underlying document.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + context - The clinical context in which the document was prepared.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + category - A categorization for the type of document referenced - helps for indexing and searching. This may be implied by or derived from the code specified in the DocumentReference.type.
# + relatesTo - Relationships that this document has with other document references that already exist.
# + authenticator - Which person or organization authenticates that this document is valid.
# + status - The status of this document reference.
@r4:ResourceDefinition {
    resourceType: "USCoreDocumentReferenceProfile",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference",
    elements: {
        "date" : {
            name: "date",
            dataType: r4:instant,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.date"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.extension"
        },
        "custodian" : {
            name: "custodian",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.custodian"
        },
        "author" : {
            name: "author",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.author"
        },
        "securityLabel" : {
            name: "securityLabel",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.securityLabel",
            valueSet: "http://hl7.org/fhir/ValueSet/security-labels"
        },
        "subject" : {
            name: "subject",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "DocumentReference.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.description"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "masterIdentifier" : {
            name: "masterIdentifier",
            dataType: r4:Identifier,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.masterIdentifier"
        },
        "type" : {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            path: "DocumentReference.type",
            valueSet: "http://hl7.org/fhir/us/core/ValueSet/us-core-documentreference-type"
        },
        "content" : {
            name: "content",
            dataType: DocumentReferenceContent,
            min: 1,
            max: 1,
            isArray: false,
            path: "DocumentReference.content"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.contained"
        },
        "docStatus" : {
            name: "docStatus",
            dataType: DocumentReferenceDocStatus,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.docStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/composition-status|4.0.1"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.meta"
        },
        "context" : {
            name: "context",
            dataType: DocumentReferenceContext,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.context"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.text"
        },
        "category" : {
            name: "category",
            dataType: r4:CodeableConcept,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.category",
            valueSet: "http://hl7.org/fhir/us/core/ValueSet/us-core-documentreference-category"
        },
        "relatesTo" : {
            name: "relatesTo",
            dataType: DocumentReferenceRelatesTo,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DocumentReference.relatesTo"
        },
        "authenticator" : {
            name: "authenticator",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "DocumentReference.authenticator"
        },
        "status" : {
            name: "status",
            dataType: DocumentReferenceStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "DocumentReference.status",
            valueSet: "http://hl7.org/fhir/ValueSet/document-reference-status"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type USCoreDocumentReferenceProfile record {|
    *r4:DomainResource;

    RESOURCE_NAME_USCOREDOCUMENTREFERENCEPROFILE resourceType = RESOURCE_NAME_USCOREDOCUMENTREFERENCEPROFILE;

    BaseUSCoreDocumentReferenceProfileMeta meta = {
        profile : [PROFILE_BASE_USCOREDOCUMENTREFERENCEPROFILE]
    };
    r4:instant date?;
    r4:Identifier[] identifier?;
    r4:Extension[] extension?;
    r4:Reference custodian?;
    r4:Reference[] author?;
    r4:CodeableConcept[] securityLabel?;
    r4:Reference subject;
    r4:Extension[] modifierExtension?;
    string description?;
    r4:code language?;
    r4:Identifier masterIdentifier?;
    r4:CodeableConcept 'type;
    DocumentReferenceContent content;
    r4:Resource[] contained?;
    DocumentReferenceDocStatus docStatus?;
    DocumentReferenceContext context?;
    r4:uri implicitRules?;
    string id?;
    r4:Narrative text?;
    r4:CodeableConcept[] category;
    DocumentReferenceRelatesTo[] relatesTo?;
    r4:Reference authenticator?;
    DocumentReferenceStatus status;
|};

@r4:DataTypeDefinition {
    name: "BaseUSCoreDocumentReferenceProfileMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseUSCoreDocumentReferenceProfileMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# FHIR DocumentReferenceContext datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The time period over which the service that is described by the document was provided.
# + related - Related identifiers or resources associated with the DocumentReference.
# + facilityType - The kind of facility where the patient was seen.
# + practiceSetting - This property may convey specifics about the practice setting where the content was created, often reflecting the clinical specialty.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + encounter - Describes the clinical encounter or type of care that the document content is associated with.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + event - This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the type Code, such as a 'History and Physical Report' in which the procedure being documented is necessarily a 'History and Physical' act.
# + sourcePatientInfo - The Patient Information as known when the document was published. May be a reference to a version specific, or contained.
@r4:DataTypeDefinition {
    name: "DocumentReferenceContext",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DocumentReference.context.extension"
        },
        "period": {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "The time period over which the service that is described by the document was provided.",
            path: "DocumentReference.context.period"
        },
        "related": {
            name: "related",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Related identifiers or resources associated with the DocumentReference.",
            path: "DocumentReference.context.related"
        },
        "facilityType": {
            name: "facilityType",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The kind of facility where the patient was seen.",
            path: "DocumentReference.context.facilityType"
        },
        "practiceSetting": {
            name: "practiceSetting",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "This property may convey specifics about the practice setting where the content was created, often reflecting the clinical specialty.",
            path: "DocumentReference.context.practiceSetting"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DocumentReference.context.modifierExtension"
        },
        "encounter": {
            name: "encounter",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the clinical encounter or type of care that the document content is associated with.",
            path: "DocumentReference.context.encounter"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DocumentReference.context.id"
        },
        "event": {
            name: "event",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the type Code, such as a 'History and Physical Report' in which the procedure being documented is necessarily a 'History and Physical' act.",
            path: "DocumentReference.context.event"
        },
        "sourcePatientInfo": {
            name: "sourcePatientInfo",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The Patient Information as known when the document was published. May be a reference to a version specific, or contained.",
            path: "DocumentReference.context.sourcePatientInfo"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type DocumentReferenceContext record {|
    r4:Extension[] extension?;
    r4:Period period?;
    r4:Reference[] related?;
    r4:CodeableConcept facilityType?;
    r4:CodeableConcept practiceSetting?;
    r4:Extension[] modifierExtension?;
    r4:Reference encounter?;
    string id?;
    r4:CodeableConcept[] event?;
    r4:Reference sourcePatientInfo?;
|};

# FHIR DocumentReferenceRelatesTo datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - The type of relationship that this document has with anther document.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + target - The target document of this relationship.
@r4:DataTypeDefinition {
    name: "DocumentReferenceRelatesTo",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DocumentReference.relatesTo.extension"
        },
        "code": {
            name: "code",
            dataType: DocumentReferenceRelatesToCode,
            min: 1,
            max: 1,
            isArray: false,
            description: "The type of relationship that this document has with anther document.",
            path: "DocumentReference.relatesTo.code"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DocumentReference.relatesTo.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DocumentReference.relatesTo.id"
        },
        "target": {
            name: "target",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The target document of this relationship.",
            path: "DocumentReference.relatesTo.target"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type DocumentReferenceRelatesTo record {|
    r4:Extension[] extension?;
    DocumentReferenceRelatesToCode code;
    r4:Extension[] modifierExtension?;
    string id?;
    r4:Reference target;
|};

# FHIR DocumentReferenceContent datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + attachment - The document or URL of the document along with critical metadata to prove content has integrity.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + format - An identifier of the document encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "DocumentReferenceContent",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DocumentReference.content.extension"
        },
        "attachment": {
            name: "attachment",
            dataType: r4:Attachment,
            min: 1,
            max: 1,
            isArray: false,
            description: "The document or URL of the document along with critical metadata to prove content has integrity.",
            path: "DocumentReference.content.attachment"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DocumentReference.content.modifierExtension"
        },
        "format": {
            name: "format",
            dataType: r4:Coding,
            min: 0,
            max: 1,
            isArray: false,
            description: "An identifier of the document encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType.",
            path: "DocumentReference.content.format"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DocumentReference.content.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type DocumentReferenceContent record {|
    r4:Extension[] extension?;
    r4:Attachment attachment;
    r4:Extension[] modifierExtension?;
    r4:Coding format?;
    string id?;
|};

# DocumentReferenceDocStatus enum
public enum DocumentReferenceDocStatus {
   CODE_DOCSTATUS_AMENDED = "amended",
   CODE_DOCSTATUS_FINAL = "final",
   CODE_DOCSTATUS_PRELIMINARY = "preliminary",
   CODE_DOCSTATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# DocumentReferenceStatus enum
public enum DocumentReferenceStatus {
   CODE_STATUS_CURRENT = "current",
   CODE_STATUS_SUPERSEDED = "superseded",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# DocumentReferenceRelatesToCode enum
public enum DocumentReferenceRelatesToCode {
   CODE_CODE_SIGNS = "signs",
   CODE_CODE_REPLACES = "replaces",
   CODE_CODE_TRANSFORMS = "transforms",
   CODE_CODE_APPENDS = "appends"
}

