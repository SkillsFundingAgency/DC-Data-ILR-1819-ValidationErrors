﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <IncludeCompositeObjects>True</IncludeCompositeObjects>
    <TargetDatabaseName>__Target_Database__</TargetDatabaseName>
    <DeployScriptFileName>__Target_Database__.Database.sql</DeployScriptFileName>
    <TargetConnectionString>Data Source=__SQL_SERVER__;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Connect Timeout=60;Encrypt=False;TrustServerCertificate=True</TargetConnectionString>
    <ProfileVersionNumber>1</ProfileVersionNumber>
    <BlockOnPossibleDataLoss>True</BlockOnPossibleDataLoss>
    <DropObjectsNotInSource>True</DropObjectsNotInSource>
    <DoNotDropDatabaseRoles>True</DoNotDropDatabaseRoles>
    <DoNotDropLogins>True</DoNotDropLogins>
    <DoNotDropRoleMembership>True</DoNotDropRoleMembership>
  </PropertyGroup>
  <ItemGroup>
    <SqlCmdVariable Include="ILR1819ValidationErrorsROUsrPwd">
      <Value>__ILR1819ValidationErrorsROUsrPwd__</Value>
    </SqlCmdVariable>
    <SqlCmdVariable Include="ILR1819ValidationErrorsRWUsrPwd">
      <Value>__ILR1819ValidationErrorsRWUsrPwd__</Value>
    </SqlCmdVariable>
  </ItemGroup>
</Project>