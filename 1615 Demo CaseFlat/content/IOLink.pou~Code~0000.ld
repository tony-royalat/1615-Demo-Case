<?xml version="1.0" encoding="utf-8"?>
<body xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <LD>
  <inVariable localId="38" height="4" width="8" executionOrderId="1">
   <position x="41" y="56" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>xActivate</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="77" height="4" width="13" executionOrderId="1">
   <position x="36" y="16" />
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
   <position x="36" y="28" />
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
  <inVariable localId="39" height="4" width="8" executionOrderId="2">
   <position x="41" y="60" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>xReset</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="42" height="4" width="13" executionOrderId="3">
   <position x="36" y="64" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>xPNIODataValid</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="78" height="4" width="8" executionOrderId="3">
   <position x="41" y="32" />
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
   <position x="51" y="12" />
   <inputVariables>
    <variable formalParameter="dwNodeID">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="77">
       <position x="51" y="18" />
       <position x="49" y="18" />
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
       <position x="51" y="30" />
       <position x="49" y="30" />
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
       <position x="51" y="34" />
       <position x="49" y="34" />
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
  <inVariable localId="41" height="4" width="8" executionOrderId="4">
   <position x="41" y="68" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>xTrigger</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <outVariable localId="32" height="4" width="13" executionOrderId="5">
   <position x="81" y="28" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="22" formalParameter="udtAsynCom">
     <position x="81" y="30" />
     <position x="79" y="30" />
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
  <inVariable localId="40" height="4" width="13" executionOrderId="5">
   <position x="36" y="72" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>xReadWrite</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <outVariable localId="30" height="4" width="8" executionOrderId="6">
   <position x="81" y="32" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="22" formalParameter="xBusy">
     <position x="81" y="34" />
     <position x="79" y="34" />
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
  <inVariable localId="43" height="4" width="8" executionOrderId="6">
   <position x="41" y="76" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>iPort</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="44" height="4" width="8" executionOrderId="7">
   <position x="41" y="80" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>wIndex</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="45" height="4" width="13" executionOrderId="8">
   <position x="36" y="84" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>bSubIndex</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="29" height="4" width="18" executionOrderId="9">
   <position x="31" y="92" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>arrIOL_ReadData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="34" height="4" width="18" executionOrderId="10">
   <position x="31" y="96" />
   <connectionPointOut>
    <relPosition x="18" y="2" />
   </connectionPointOut>
   <expression>arrIOL_WriteData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="36" height="4" width="13" executionOrderId="11">
   <position x="36" y="100" />
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
  <block localId="1" width="28" height="52" typeName="IOL_COM_3" instanceName="IOL_COM_31" executionOrderId="12">
   <position x="51" y="52" />
   <inputVariables>
    <variable formalParameter="xActivate">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="38">
       <position x="51" y="58" />
       <position x="49" y="58" />
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
      <connection refLocalId="39">
       <position x="51" y="62" />
       <position x="49" y="62" />
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
      <connection refLocalId="42">
       <position x="51" y="66" />
       <position x="49" y="66" />
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
      <connection refLocalId="41">
       <position x="51" y="70" />
       <position x="49" y="70" />
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
      <connection refLocalId="40">
       <position x="51" y="74" />
       <position x="49" y="74" />
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
      <connection refLocalId="43">
       <position x="51" y="78" />
       <position x="49" y="78" />
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
      <connection refLocalId="44">
       <position x="51" y="82" />
       <position x="49" y="82" />
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
      <connection refLocalId="45">
       <position x="51" y="86" />
       <position x="49" y="86" />
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
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables>
    <variable formalParameter="arrIOL_ReadData">
     <connectionPointIn>
      <relPosition x="0" y="42" />
      <connection refLocalId="29">
       <position x="51" y="94" />
       <position x="49" y="94" />
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
      <connection refLocalId="34">
       <position x="51" y="98" />
       <position x="49" y="98" />
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
       <position x="51" y="102" />
       <position x="49" y="102" />
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
      <parameterInformation formalParameter="xActivate" localId="2" executionOrderId="12" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="xReset" localId="3" executionOrderId="12" negatable="true" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="xPNIO_Data_Valid" localId="4" executionOrderId="12" negatable="true" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="xTrigger" localId="5" executionOrderId="12" negatable="true" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="xRead_Write" localId="6" executionOrderId="12" negatable="true" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="iPort" localId="7" executionOrderId="12" editorParameter="false" priority="6" />
      <parameterInformation formalParameter="wIndex" localId="8" executionOrderId="12" negatable="true" editorParameter="false" priority="7" />
      <parameterInformation formalParameter="bSubIndex" localId="9" executionOrderId="12" negatable="true" editorParameter="false" priority="8" />
      <parameterInformation formalParameter="iWriteLength" localId="10" executionOrderId="12" editorParameter="false" priority="9" />
      <parameterInformation formalParameter="xActive" localId="11" executionOrderId="12" negatable="true" editorParameter="false" priority="10" />
      <parameterInformation formalParameter="xDone" localId="12" executionOrderId="12" negatable="true" editorParameter="false" priority="11" />
      <parameterInformation formalParameter="xBusy" localId="13" executionOrderId="12" negatable="true" editorParameter="false" priority="12" />
      <parameterInformation formalParameter="xError" localId="14" executionOrderId="12" negatable="true" editorParameter="false" priority="13" />
      <parameterInformation formalParameter="wDiagCode" localId="15" executionOrderId="12" negatable="true" editorParameter="false" priority="14" />
      <parameterInformation formalParameter="dwAddDiagCode" localId="16" executionOrderId="12" negatable="true" editorParameter="false" priority="15" />
      <parameterInformation formalParameter="iReadLength" localId="17" executionOrderId="12" editorParameter="false" priority="16" />
      <parameterInformation formalParameter="udtDiag" localId="18" executionOrderId="12" editorParameter="false" priority="17" />
      <parameterInformation formalParameter="arrIOL_ReadData" localId="19" executionOrderId="12" editorParameter="false" priority="18" />
      <parameterInformation formalParameter="arrIOL_WriteData" localId="20" executionOrderId="12" editorParameter="false" priority="19" />
      <parameterInformation formalParameter="udtAsynCom" localId="21" executionOrderId="12" editorParameter="false" priority="20" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <outVariable localId="46" height="4" width="8" executionOrderId="13">
   <position x="81" y="64" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="xBusy">
     <position x="81" y="66" />
     <position x="79" y="66" />
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
  <outVariable localId="47" height="4" width="8" executionOrderId="14">
   <position x="81" y="68" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="xError">
     <position x="81" y="70" />
     <position x="79" y="70" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>xError</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="48" height="4" width="13" executionOrderId="15">
   <position x="81" y="72" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="wDiagCode">
     <position x="81" y="74" />
     <position x="79" y="74" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>wDiagCode</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="49" height="4" width="13" executionOrderId="16">
   <position x="81" y="80" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="iReadLength">
     <position x="81" y="82" />
     <position x="79" y="82" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>iReadLength</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="33" height="4" width="18" executionOrderId="17">
   <position x="81" y="92" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="arrIOL_ReadData">
     <position x="81" y="94" />
     <position x="79" y="94" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>arrIOL_ReadData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="35" height="4" width="18" executionOrderId="18">
   <position x="81" y="96" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="arrIOL_WriteData">
     <position x="81" y="98" />
     <position x="79" y="98" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>arrIOL_WriteData</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="37" height="4" width="13" executionOrderId="19">
   <position x="81" y="100" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="udtAsynCom">
     <position x="81" y="102" />
     <position x="79" y="102" />
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
    <version>2.4.0.266.0</version>
    <multilineOptions maximumContactWidth="13" minimumContactWidth="13" maximumContactLines="1" contactEllipse="true" maximumInstanceNameWidth="2147483647" maximumInstanceNameLines="1" instanceNameEllipse="false" maximumVariableWidth="2147483647" variableEllipse="false" />
   </docInformation>
  </data>
 </addData>
</body>