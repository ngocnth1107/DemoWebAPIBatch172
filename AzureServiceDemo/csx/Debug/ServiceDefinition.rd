<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="AzureServiceDemo" generation="1" functional="0" release="0" Id="fe82776c-b5d3-4216-b862-1150a082ef42" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureServiceDemoGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WorkerRole1:TestEndpoint" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/LB:WorkerRole1:TestEndpoint" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/MapWorkerRole1Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WorkerRole1:TestEndpoint">
          <toPorts>
            <inPortMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1/TestEndpoint" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWorkerRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WorkerRole1" generation="1" functional="0" release="0" software="C:\Users\datnvn\source\repos\WebAPIIISHostingDemo\AzureServiceDemo\csx\Debug\roles\WorkerRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="TestEndpoint" protocol="http" portRanges="1080" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WorkerRole1&quot;&gt;&lt;e name=&quot;TestEndpoint&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WorkerRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WorkerRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WorkerRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="21a8380f-f1e2-4d05-aefb-e38d19f23d8c" ref="Microsoft.RedDog.Contract\ServiceContract\AzureServiceDemoContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="d343a662-7f23-4a5e-a00b-33ec777cbc98" ref="Microsoft.RedDog.Contract\Interface\WorkerRole1:TestEndpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureServiceDemo/AzureServiceDemoGroup/WorkerRole1:TestEndpoint" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>