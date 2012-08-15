﻿<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <OutputType>Library</OutputType>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <Name>RemObjects.Sugar.Cooper</Name>
    <RootNamespace>RemObjects.Sugar.Cooper</RootNamespace>
    <ProjectGuid>{d1ee6c41-515b-4175-873f-ee188ac43450}</ProjectGuid>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <Optimize>False</Optimize>
    <OutputPath>bin\Debug\</OutputPath>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <SuppressWarnings />
    <FutureHelperClassName />
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <OutputPath>bin\Release\</OutputPath>
    <GenerateDebugInfo>False</GenerateDebugInfo>
    <EnableAsserts>False</EnableAsserts>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <DefineConstants>
    </DefineConstants>
    <SuppressWarnings />
    <FutureHelperClassName />
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="rt.jar" />
  </ItemGroup>
  <ItemGroup>
    <Compile Include="Console.pas" />
    <Compile Include="Cooper\EnumerationSequence.pas" />
    <Compile Include="Dictionary.pas" />
    <Compile Include="Exceptions.pas" />
    <Compile Include="List.pas" />
    <Compile Include="String.pas" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Cooper" />
    <Folder Include="Properties\" />
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Oxygene\RemObjects.Oxygene.Java.targets" />
  <PropertyGroup>
    <PreBuildEvent />
  </PropertyGroup>
</Project>