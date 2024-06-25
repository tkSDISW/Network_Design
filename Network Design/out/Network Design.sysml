package  'Network Design Library' {
    import ARCADIA::**; 
    @PackageMeta {
        type = "Library";
    } 
    @CapellaID { eid = "a33471dc-8b4d-4373-8f25-b48490e205ca"; } 
    enum def 'ProgressStatus' :> EnumerationPropertyType  { 
        enum 'DRAFT'; 
        enum 'TO_BE_REVIEWED'; 
        enum 'TO_BE_DISCUSSED'; 
        enum 'REWORK_NECESSARY'; 
        enum 'UNDER_REWORK'; 
        enum 'REVIEWED_OK'; 
    }  
    package  'Network Design' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        @CapellaID { eid = "58f149d4-3347-49d5-84ed-9a5acf1f0439"; } 
        package  'SMW Properties' {
            @PackageMeta {
                type = "PropertyValuePkg";
            } 
            @CapellaID { eid = "b043914b-a0f1-4d46-87a5-671303ae0ea2"; } 
            enum def 'SMW_SYNC_STATUS' :> EnumerationPropertyType  { 
                enum 'SYNC'; 
                enum 'SYNC_DEEP'; 
            }  
        } 
        package  'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            @CapellaID { eid = "731d5757-04d6-4390-b6a7-ef791bab09d3"; } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "ed3c5122-301f-4a87-a06d-eb84fd869844"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "e798489c-b97a-400a-a89c-99941a5be37b"; } 
            } 
            package  'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
                @CapellaID { eid = "40c0465d-d4ab-404f-8ac1-8e05230ecc53"; } 
            } 
            package  'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
                @CapellaID { eid = "c7d443aa-5cc1-42aa-a475-c128ef41deb2"; } 
            } 
            package  'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
                @CapellaID { eid = "ab3bdbae-fca4-4256-ba9c-aa7bf613cdb4"; } 
            } 
            package  'Operational Activities' {
                @PackageMeta {
                    type = "OperationalActivityPkg";
                } 
                @CapellaID { eid = "a5c5e157-4038-4816-ba84-e9a47dfd05d2"; } 
                action 'Root Operational Activity' : OperationalActivity  { 
                    @CapellaID { eid = "600df8b2-5ed5-4801-8542-69f8e9b44ffb"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
            } 
        } 
        package  'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            @CapellaID { eid = "5d707d04-11fa-4b4d-add4-4602d1cacd8f"; } 
            package  'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
                @CapellaID { eid = "fc188a4d-a29c-495e-8bd9-a22dcbdf601c"; } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                @CapellaID { eid = "2e0f1c5d-91f5-4a21-a518-290a0649b709"; } 
                part 'System' : SystemComponent { 
                    @CapellaID { eid = "2a5fc8a3-2d15-4c82-a418-9355b9958077"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    state 'System State Machine' : StateMachine  { 
                        @CapellaID { eid = "a740c61c-00a3-442b-8735-a65f4b59da52"; } 
                        attribute :>> isControlOperator = false; 
                    }  
                    ref :>> ownedStateMachines =  ('Network Design Library'::'Network Design'::'System Analysis'::'Structure'::'System'.'System State Machine'); 
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "b4e952f4-eaaa-45bf-a519-4850cd755d5d"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "f7cdde2a-f362-4279-9713-7645fc555f2d"; } 
                package  'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                    @CapellaID { eid = "f2a581fa-3ed2-438b-bac8-3f5a65eedcf3"; } 
                } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
                @CapellaID { eid = "e7283fdc-67c2-43ba-9e3d-55ca22802150"; } 
            } 
            package  'System Functions' {
                @PackageMeta {
                    type = "SystemFunctionPkg";
                } 
                @CapellaID { eid = "a9c18ea7-8ca7-4a76-afa5-4abd352db027"; } 
                action 'Root System Function' : SystemFunction  { 
                    @CapellaID { eid = "a65c6fc8-f47f-4d11-94da-d35b2396c282"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                     
                }  
            } 
        } 
        package  'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            @CapellaID { eid = "fc558351-2668-46ed-9104-f4b3eded8155"; } 
            package  'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                @CapellaID { eid = "df29572d-0fdf-4885-8b38-5cf93ea77200"; } 
                part 'Logical System' : LogicalComponent { 
                    @CapellaID { eid = "0854dcb0-09f0-4ca4-a50b-cf165ec19fe1"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                     
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "f139c72f-a088-495e-b29f-2b744c6d9091"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "028042f1-b20d-422b-b69c-305919f243be"; } 
                item 'Vehice Distance' : ExchangeItem  { 
                    @CapellaID { eid = "fd41da7b-0c19-473d-a3c8-b8b8b401a306"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'Vehicle Distance' : ExchangeItemElement { 
                        @CapellaID { eid = "4a92812f-7c6b-4620-9b65-df57849068d9"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'CAN_Signal';
                    } 
                    ref :>> ownedElements =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehice Distance'.'Vehicle Distance'); 
                }  
                item 'Throttle Position' : ExchangeItem  { 
                    @CapellaID { eid = "42952d66-0d8f-4e67-ba85-636e99485ef9"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'Throttle Position' : ExchangeItemElement { 
                        @CapellaID { eid = "04cf5d10-8199-4202-b428-b70d30731568"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'CAN_Signal';
                    } 
                    ref :>> ownedElements =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Throttle Position'.'Throttle Position'); 
                }  
                item 'Throttle Request' : ExchangeItem  { 
                    @CapellaID { eid = "4c108bee-bc57-4442-b796-a17df37c0375"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'Throttle Requiest' : ExchangeItemElement { 
                        @CapellaID { eid = "28e83a40-ad2f-4210-94c0-d3d71c04c97c"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'CAN_Signal';
                    } 
                    ref :>> ownedElements =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Throttle Request'.'Throttle Requiest'); 
                }  
                item 'Brake Position' : ExchangeItem  { 
                    @CapellaID { eid = "ae113e94-edd9-467c-9aa7-82e174b60f48"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'Brake Position' : ExchangeItemElement { 
                        @CapellaID { eid = "a855d467-839a-46d8-9c8a-ffdcd5080a7b"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'CAN_Signal';
                    } 
                    ref :>> ownedElements =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Brake Position'.'Brake Position'); 
                }  
                item 'Brake Request' : ExchangeItem  { 
                    @CapellaID { eid = "1758f9e3-e33f-4c7a-91ef-a194f64896c6"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'Brake Request' : ExchangeItemElement { 
                        @CapellaID { eid = "5e31775e-9881-4cc9-bfc5-6000da201724"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'CAN_Signal';
                    } 
                    ref :>> ownedElements =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Brake Request'.'Brake Request'); 
                }  
                item 'Vehicle Speed' : ExchangeItem  { 
                    @CapellaID { eid = "f73e35b3-b13d-412e-ae2b-ce36b3a6fd37"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'Vehicle Speed' : ExchangeItemElement { 
                        @CapellaID { eid = "3d08cfd4-bc93-48ba-ba4b-11b6e2e6c861"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        attribute 'Data Definition' : PropertyValueGroup { 
                            @CapellaID { eid = "dbe723cc-3d35-4833-a332-022672289122"; } 
                            attribute 'Min' : FloatPropertyValue  = -50.0 { 
                                @CapellaID { eid = "3b2e88cd-e797-4ba0-99ce-66237eee72c3"; } 
                            }  
                            attribute 'Max' : FloatPropertyValue  = 120.0 { 
                                @CapellaID { eid = "1b0b0e86-7401-41e5-91fc-9b577de8fd3d"; } 
                            }  
                            attribute 'Resolution' : FloatPropertyValue  = 0.1 { 
                                @CapellaID { eid = "b31ea796-9e9c-485e-ab7d-3306539ae8dd"; } 
                            }  
                            attribute 'Frequency' : FloatPropertyValue  = 20.0 { 
                                @CapellaID { eid = "32a479b0-7de0-4060-8348-d6b78c7530d6"; } 
                            }  
                            attribute 'Bitsize' : IntegerPropertyValue  = 32 { 
                                @CapellaID { eid = "7f3e67d8-a886-469a-8d19-15f06a195eb9"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'.'Min',
                            'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'.'Max',
                            'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'.'Resolution',
                            'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'.'Frequency',
                            'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'.'Bitsize'); 
                        }  
                        ref :>> appliedPropertyValueGroups =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'); 
                        ref :>> ownedPropertyValueGroups =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'.'Data Definition'); 
                         
                         
                        ref :>> abstractType = 'Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'CAN_Signal';
                    } 
                    ref :>> ownedElements =  ('Network Design Library'::'Network Design'::'Logical Architecture'::'Data'::'Vehicle Speed'.'Vehicle Speed'); 
                }  
                item 'CAN_Signal' : Class { 
                    @CapellaID { eid = "059006e8-8b59-41b9-b1ea-080e6fdab8a2"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "b54d5fd8-6c27-4f12-91eb-ea5c3fed65fb"; } 
            } 
            package  'Logical Functions' {
                @PackageMeta {
                    type = "LogicalFunctionPkg";
                } 
                @CapellaID { eid = "7b3514bb-f4f5-401f-9709-925993478ec4"; } 
                action 'Root Logical Function' : LogicalFunction  { 
                    @CapellaID { eid = "d4b8c18d-1d2b-4a9a-96b0-94567a66cb6b"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                     
                }  
            } 
        } 
        package  'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            @CapellaID { eid = "488d0f4e-f029-46f0-9641-25950049487d"; } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "b55c92d1-b883-4476-ab28-ab96d4b765ec"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "5dfcb549-a2f1-4ed2-8f63-bbaae69cb328"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "bf0bc7f5-62f7-4cdb-b3c4-39f69cdd7962"; } 
            } 
            package  'Physical Functions' {
                @PackageMeta {
                    type = "PhysicalFunctionPkg";
                } 
                @CapellaID { eid = "bbdadc51-260a-48b0-bcaf-d8b598407200"; } 
                action 'Root Physical Function' : PhysicalFunction  { 
                    @CapellaID { eid = "e53a9c8a-d64d-4c1d-a36a-74c0c89ca1a7"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                     
                }  
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                @CapellaID { eid = "c43a9497-8be6-4da3-ad08-8049316fcf67"; } 
                part 'Physical System' : PhysicalComponent { 
                    @CapellaID { eid = "be98c304-f43a-41f4-ae17-26d685bfb500"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::UNSET; 
                     
                }  
            } 
        } 
    } 
}