<?xml version="1.0" encoding="utf-8"?>
<body xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <LD>
  <inVariable localId="1" height="4" width="13" executionOrderId="1">
   <position x="26" y="84" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>dwNodeID</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="2" height="4" width="13" executionOrderId="2">
   <position x="26" y="96" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>udtAsynCom</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="3" height="4" width="8" executionOrderId="3">
   <position x="31" y="100" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>xBusy</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <block localId="4" width="28" height="24" typeName="AsynCom_PN_1" instanceName="AsynCom_PN_11" executionOrderId="4">
   <position x="41" y="80" />
   <inputVariables>
    <variable formalParameter="dwNodeID">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="1">
       <position x="41" y="86" />
       <position x="39" y="86" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables>
    <variable formalParameter="udtAsynCom">
     <connectionPointIn>
      <relPosition x="0" y="18" />
      <connection refLocalId="2">
       <position x="41" y="98" />
       <position x="39" y="98" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="28" y="18" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="xBusy">
     <connectionPointIn>
      <relPosition x="0" y="22" />
      <connection refLocalId="3">
       <position x="41" y="102" />
       <position x="39" y="102" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="28" y="22" />
     </connectionPointOut>
    </variable>
   </inOutVariables>
   <outputVariables>
    <variable formalParameter="dwDiagCodeConnect">
     <connectionPointOut>
      <relPosition x="28" y="6" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="dwDiagCodeRead">
     <connectionPointOut>
      <relPosition x="28" y="10" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="dwDiagCodeWrite">
     <connectionPointOut>
      <relPosition x="28" y="14" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameterInformation formalParameter="dwNodeID" localId="5" executionOrderId="4" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="dwDiagCodeConnect" localId="6" executionOrderId="4" negatable="true" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="dwDiagCodeRead" localId="7" executionOrderId="4" negatable="true" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="dwDiagCodeWrite" localId="8" executionOrderId="4" negatable="true" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="udtAsynCom" localId="9" executionOrderId="4" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="xBusy" localId="10" executionOrderId="4" negatable="true" editorParameter="false" priority="6" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <outVariable localId="11" height="4" width="13" executionOrderId="5">
   <position x="71" y="96" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="4" formalParameter="udtAsynCom">
     <position x="71" y="98" />
     <position x="69" y="98" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtAsynCom</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="12" height="4" width="8" executionOrderId="6">
   <position x="71" y="100" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="4" formalParameter="xBusy">
     <position x="71" y="102" />
     <position x="69" y="102" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>xBusy</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
 </LD>
 <addData>
  <data name="docInformation" handleUnknown="preserve">
   <docInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" gridActive="true" pageWidth="-1">
    <version>2.4.3.214.0</version>
    <multilineOptions maximumContactWidth="13" minimumContactWidth="13" maximumContactLines="1" contactEllipse="true" maximumInstanceNameWidth="2147483647" maximumInstanceNameLines="1" instanceNameEllipse="false" maximumVariableWidth="2147483647" variableEllipse="false" />
   </docInformation>
  </data>
 </addData>
</body>