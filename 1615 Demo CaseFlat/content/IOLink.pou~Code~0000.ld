<?xml version="1.0" encoding="utf-8"?>
<body xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <LD>
  <inVariable localId="54" height="4" width="8" executionOrderId="1">
   <position x="36" y="12" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>xStart</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="58" height="4" width="18" executionOrderId="1">
   <position x="21" y="36" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>udtExample.xActivate</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="77" height="4" width="13" executionOrderId="1">
   <position x="26" y="100" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>dwNodeID</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="31" height="4" width="13" executionOrderId="2">
   <position x="26" y="112" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>udtAsynCom</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="55" height="4" width="13" executionOrderId="2">
   <position x="31" y="16" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>udtExample</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="59" height="4" width="18" executionOrderId="2">
   <position x="21" y="40" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>udtExample.xReset</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <block localId="50" width="18" height="12" typeName="Example" instanceName="Example1" executionOrderId="3">
   <position x="46" y="8" />
   <inputVariables>
    <variable formalParameter="xStart">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="54">
       <position x="46" y="14" />
       <position x="44" y="14" />
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
    <variable formalParameter="udtExample">
     <connectionPointIn>
      <relPosition x="0" y="10" />
      <connection refLocalId="55">
       <position x="46" y="18" />
       <position x="44" y="18" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="18" y="10" />
     </connectionPointOut>
    </variable>
   </inOutVariables>
   <outputVariables>
    <variable formalParameter="iState">
     <connectionPointOut>
      <relPosition x="18" y="6" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameterInformation formalParameter="xStart" localId="51" executionOrderId="3" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="iState" localId="52" executionOrderId="3" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="udtExample" localId="53" executionOrderId="3" editorParameter="false" priority="3" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <inVariable localId="61" height="4" width="23" executionOrderId="3">
   <position x="16" y="44" />
   <connectionPointOut>
    <relPosition x="23" y="2" />
   </connectionPointOut>
   <expression>udtExample.xPNIO_Data_Valid</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="78" height="4" width="8" executionOrderId="3">
   <position x="31" y="116" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>xBusy</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <block localId="22" width="28" height="24" typeName="AsynCom_PN_1" instanceName="AsynCom_PN_11" executionOrderId="4">
   <position x="41" y="96" />
   <inputVariables>
    <variable formalParameter="dwNodeID">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="77">
       <position x="41" y="102" />
       <position x="39" y="102" />
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
      <connection refLocalId="31">
       <position x="41" y="114" />
       <position x="39" y="114" />
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
      <connection refLocalId="78">
       <position x="41" y="118" />
       <position x="39" y="118" />
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
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameterInformation formalParameter="dwNodeID" localId="23" executionOrderId="4" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="dwDiagCodeConnect" localId="24" executionOrderId="4" negatable="true" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="dwDiagCodeRead" localId="25" executionOrderId="4" negatable="true" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="dwDiagCodeWrite" localId="26" executionOrderId="4" negatable="true" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="udtAsynCom" localId="27" executionOrderId="4" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="xBusy" localId="28" executionOrderId="4" negatable="true" editorParameter="false" priority="6" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <outVariable localId="57" height="4" width="8" executionOrderId="4">
   <position x="66" y="12" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="50" formalParameter="iState">
     <position x="66" y="14" />
     <position x="64" y="14" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>iState</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <inVariable localId="62" height="4" width="18" executionOrderId="4">
   <position x="21" y="48" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>udtExample.xTrigger</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <outVariable localId="32" height="4" width="13" executionOrderId="5">
   <position x="71" y="112" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="22" formalParameter="udtAsynCom">
     <position x="71" y="114" />
     <position x="69" y="114" />
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
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="56" height="4" width="13" executionOrderId="5">
   <position x="66" y="16" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="50" formalParameter="udtExample">
     <position x="66" y="18" />
     <position x="64" y="18" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <inVariable localId="63" height="4" width="23" executionOrderId="5">
   <position x="16" y="52" />
   <connectionPointOut>
    <relPosition x="23" y="2" />
   </connectionPointOut>
   <expression>udtExample.xRead_Write</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <outVariable localId="30" height="4" width="8" executionOrderId="6">
   <position x="71" y="116" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="22" formalParameter="xBusy">
     <position x="71" y="118" />
     <position x="69" y="118" />
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
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <inVariable localId="64" height="4" width="13" executionOrderId="6">
   <position x="26" y="56" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>udtExample.iPort</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="65" height="4" width="18" executionOrderId="7">
   <position x="21" y="60" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>udtExample.wIndex</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="66" height="4" width="18" executionOrderId="8">
   <position x="21" y="64" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>udtExample.bSubIndex</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="67" height="4" width="23" executionOrderId="9">
   <position x="16" y="68" />
   <connectionPointOut>
    <relPosition x="23" y="2" />
   </connectionPointOut>
   <expression>udtExample.iWriteLength</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="68" height="4" width="23" executionOrderId="10">
   <position x="16" y="72" />
   <connectionPointOut>
    <relPosition x="23" y="2" />
   </connectionPointOut>
   <expression>udtExample.arrIOL_ReadData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="70" height="4" width="23" executionOrderId="11">
   <position x="16" y="76" />
   <connectionPointOut>
    <relPosition x="23" y="2" />
   </connectionPointOut>
   <expression>udtExample.arrIOL_WriteData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="36" height="4" width="13" executionOrderId="12">
   <position x="26" y="80" />
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
  <block localId="1" width="28" height="52" typeName="IOL_COM_3" instanceName="IOL_COM_31" executionOrderId="13">
   <position x="41" y="32" />
   <inputVariables>
    <variable formalParameter="xActivate">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="58">
       <position x="41" y="38" />
       <position x="39" y="38" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="xReset">
     <connectionPointIn>
      <relPosition x="0" y="10" />
      <connection refLocalId="59">
       <position x="41" y="42" />
       <position x="39" y="42" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="xPNIO_Data_Valid">
     <connectionPointIn>
      <relPosition x="0" y="14" />
      <connection refLocalId="61">
       <position x="41" y="46" />
       <position x="39" y="46" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="xTrigger">
     <connectionPointIn>
      <relPosition x="0" y="18" />
      <connection refLocalId="62">
       <position x="41" y="50" />
       <position x="39" y="50" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="xRead_Write">
     <connectionPointIn>
      <relPosition x="0" y="22" />
      <connection refLocalId="63">
       <position x="41" y="54" />
       <position x="39" y="54" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="iPort">
     <connectionPointIn>
      <relPosition x="0" y="26" />
      <connection refLocalId="64">
       <position x="41" y="58" />
       <position x="39" y="58" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="wIndex">
     <connectionPointIn>
      <relPosition x="0" y="30" />
      <connection refLocalId="65">
       <position x="41" y="62" />
       <position x="39" y="62" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="bSubIndex">
     <connectionPointIn>
      <relPosition x="0" y="34" />
      <connection refLocalId="66">
       <position x="41" y="66" />
       <position x="39" y="66" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="iWriteLength">
     <connectionPointIn>
      <relPosition x="0" y="38" />
      <connection refLocalId="67">
       <position x="41" y="70" />
       <position x="39" y="70" />
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
    <variable formalParameter="arrIOL_ReadData">
     <connectionPointIn>
      <relPosition x="0" y="42" />
      <connection refLocalId="68">
       <position x="41" y="74" />
       <position x="39" y="74" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="28" y="42" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="arrIOL_WriteData">
     <connectionPointIn>
      <relPosition x="0" y="46" />
      <connection refLocalId="70">
       <position x="41" y="78" />
       <position x="39" y="78" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="28" y="46" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="udtAsynCom">
     <connectionPointIn>
      <relPosition x="0" y="50" />
      <connection refLocalId="36">
       <position x="41" y="82" />
       <position x="39" y="82" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="28" y="50" />
     </connectionPointOut>
    </variable>
   </inOutVariables>
   <outputVariables>
    <variable formalParameter="xActive">
     <connectionPointOut>
      <relPosition x="28" y="6" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="xDone">
     <connectionPointOut>
      <relPosition x="28" y="10" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="xBusy">
     <connectionPointOut>
      <relPosition x="28" y="14" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="xError">
     <connectionPointOut>
      <relPosition x="28" y="18" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="wDiagCode">
     <connectionPointOut>
      <relPosition x="28" y="22" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="dwAddDiagCode">
     <connectionPointOut>
      <relPosition x="28" y="26" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="iReadLength">
     <connectionPointOut>
      <relPosition x="28" y="30" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="udtDiag">
     <connectionPointOut>
      <relPosition x="28" y="34" />
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
      <parameterInformation formalParameter="xActivate" localId="2" executionOrderId="13" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="xReset" localId="3" executionOrderId="13" negatable="true" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="xPNIO_Data_Valid" localId="4" executionOrderId="13" negatable="true" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="xTrigger" localId="5" executionOrderId="13" negatable="true" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="xRead_Write" localId="6" executionOrderId="13" negatable="true" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="iPort" localId="7" executionOrderId="13" editorParameter="false" priority="6" />
      <parameterInformation formalParameter="wIndex" localId="8" executionOrderId="13" negatable="true" editorParameter="false" priority="7" />
      <parameterInformation formalParameter="bSubIndex" localId="9" executionOrderId="13" negatable="true" editorParameter="false" priority="8" />
      <parameterInformation formalParameter="iWriteLength" localId="10" executionOrderId="13" editorParameter="false" priority="9" />
      <parameterInformation formalParameter="xActive" localId="11" executionOrderId="13" negatable="true" editorParameter="false" priority="10" />
      <parameterInformation formalParameter="xDone" localId="12" executionOrderId="13" negatable="true" editorParameter="false" priority="11" />
      <parameterInformation formalParameter="xBusy" localId="13" executionOrderId="13" negatable="true" editorParameter="false" priority="12" />
      <parameterInformation formalParameter="xError" localId="14" executionOrderId="13" negatable="true" editorParameter="false" priority="13" />
      <parameterInformation formalParameter="wDiagCode" localId="15" executionOrderId="13" negatable="true" editorParameter="false" priority="14" />
      <parameterInformation formalParameter="dwAddDiagCode" localId="16" executionOrderId="13" negatable="true" editorParameter="false" priority="15" />
      <parameterInformation formalParameter="iReadLength" localId="17" executionOrderId="13" editorParameter="false" priority="16" />
      <parameterInformation formalParameter="udtDiag" localId="18" executionOrderId="13" editorParameter="false" priority="17" />
      <parameterInformation formalParameter="arrIOL_ReadData" localId="19" executionOrderId="13" editorParameter="false" priority="18" />
      <parameterInformation formalParameter="arrIOL_WriteData" localId="20" executionOrderId="13" editorParameter="false" priority="19" />
      <parameterInformation formalParameter="udtAsynCom" localId="21" executionOrderId="13" editorParameter="false" priority="20" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <outVariable localId="72" height="4" width="18" executionOrderId="14">
   <position x="71" y="36" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="xActive">
     <position x="71" y="38" />
     <position x="69" y="38" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.xActive</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="73" height="4" width="18" executionOrderId="15">
   <position x="71" y="40" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="xDone">
     <position x="71" y="42" />
     <position x="69" y="42" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.xDone</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="74" height="4" width="18" executionOrderId="16">
   <position x="71" y="44" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="xBusy">
     <position x="71" y="46" />
     <position x="69" y="46" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.xBusy</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="75" height="4" width="18" executionOrderId="17">
   <position x="71" y="48" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="xError">
     <position x="71" y="50" />
     <position x="69" y="50" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.xError</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="76" height="4" width="18" executionOrderId="18">
   <position x="71" y="52" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="wDiagCode">
     <position x="71" y="54" />
     <position x="69" y="54" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.wDiagCode</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="79" height="4" width="23" executionOrderId="19">
   <position x="71" y="56" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="dwAddDiagCode">
     <position x="71" y="58" />
     <position x="69" y="58" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.dwAddDiagCode</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="80" height="4" width="23" executionOrderId="20">
   <position x="71" y="60" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="iReadLength">
     <position x="71" y="62" />
     <position x="69" y="62" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.iReadLength</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="81" height="4" width="18" executionOrderId="21">
   <position x="71" y="64" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="udtDiag">
     <position x="71" y="66" />
     <position x="69" y="66" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.udtDiag</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="69" height="4" width="23" executionOrderId="22">
   <position x="71" y="72" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="arrIOL_ReadData">
     <position x="71" y="74" />
     <position x="69" y="74" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.arrIOL_ReadData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="71" height="4" width="23" executionOrderId="23">
   <position x="71" y="76" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="arrIOL_WriteData">
     <position x="71" y="78" />
     <position x="69" y="78" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtExample.arrIOL_WriteData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="37" height="4" width="13" executionOrderId="24">
   <position x="71" y="80" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="udtAsynCom">
     <position x="71" y="82" />
     <position x="69" y="82" />
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