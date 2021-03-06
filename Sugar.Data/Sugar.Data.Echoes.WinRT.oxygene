﻿<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0" DefaultTargets="Build">
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProjectGuid>2b56e90a-f177-4d9a-a438-ed6df7ad9826</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>Sugar</RootNamespace>
    <AssemblyName>Sugar.Data</AssemblyName>
    <DefaultLanguage>en-US</DefaultLanguage>
    <ProjectTypeGuids>{BC8A1FFA-BEE3-4634-8014-F334798102B3};{656346D9-4656-40DA-A068-22D5425D4639}</ProjectTypeGuids>
    <Name>Sugar.Data.Echoes.WinRT</Name>
    <AllowLegacyCreate>False</AllowLegacyCreate>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <Optimize>false</Optimize>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>DEBUG;TRACE;NETFX_CORE</DefineConstants>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <Optimize>true</Optimize>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>TRACE;NETFX_CORE</DefineConstants>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Debug|ARM'">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>DEBUG;TRACE;NETFX_CORE</DefineConstants>
    <CpuType>ARM</CpuType>
    <Prefer32Bit>true</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Release|ARM'">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>TRACE;NETFX_CORE</DefineConstants>
    <Optimize>true</Optimize>
    <CpuType>ARM</CpuType>
    <Prefer32Bit>true</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Debug|x64'">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>DEBUG;TRACE;NETFX_CORE</DefineConstants>
    <CpuType>x64</CpuType>
    <Prefer32Bit>true</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Release|x64'">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>TRACE;NETFX_CORE</DefineConstants>
    <Optimize>true</Optimize>
    <CpuType>x64</CpuType>
    <Prefer32Bit>true</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Debug|x86'">
    <GeneratePDB>True</GeneratePDB>
    <DebugSymbols>true</DebugSymbols>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>DEBUG;TRACE;NETFX_CORE</DefineConstants>
    <CpuType>x86</CpuType>
    <Prefer32Bit>true</Prefer32Bit>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Release|x86'">
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <OutputPath>bin\WinRT\</OutputPath>
    <DefineConstants>TRACE;NETFX_CORE</DefineConstants>
    <Optimize>true</Optimize>
    <CpuType>x86</CpuType>
    <Prefer32Bit>true</Prefer32Bit>
  </PropertyGroup>
  <ItemGroup>
    <Compile Include="JSON\Exceptions.pas" />
    <Compile Include="JSON\JsonConsts.pas" />
    <Compile Include="JSON\JsonDeserializer.pas" />
    <Compile Include="JSON\JsonSerializer.pas" />
    <Compile Include="JSON\JsonTokenizer.pas" />
    <Compile Include="JSON\JsonTokenKind.pas" />
    <Compile Include="JSON\Objects\JsonArray.pas" />
    <Compile Include="JSON\Objects\JsonObject.pas" />
    <Compile Include="JSON\Objects\JsonValue.pas" />
    <Compile Include="Properties\AssemblyInfo_WinRT.pas" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="JSON" />
    <Folder Include="JSON\Objects" />
    <Folder Include="Properties\" />
  </ItemGroup>
  <PropertyGroup Condition=" '$(VisualStudioVersion)' == '' or '$(VisualStudioVersion)' &lt; '11.0' ">
    <VisualStudioVersion>11.0</VisualStudioVersion>
  </PropertyGroup>
  <!-- To modify your build process, add your task inside one of the targets below and uncomment it. 
       Other similar extension points exist, see Microsoft.Common.targets.
  <Target Name="BeforeBuild">
  </Target>
  <Target Name="AfterBuild">
  </Target>
  -->
  <ItemGroup>
    <Reference Include="mscorlib" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\Sugar\Sugar.Echoes.WinRT.oxygene">
      <Name>Sugar.Echoes.WinRT</Name>
      <Project>{3ab69816-9882-4fa6-abe5-c146199f5279}</Project>
      <Private>True</Private>
      <HintPath>..\Sugar\bin\WinRT\Sugar.dll</HintPath>
    </ProjectReference>
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Oxygene\RemObjects.Oxygene.Echoes.WinRT.targets" />
  <PropertyGroup>
    <PreBuildEvent>rmdir /s /q $(ProjectDir)\Obj</PreBuildEvent>
  </PropertyGroup>
</Project>