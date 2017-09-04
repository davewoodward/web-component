<#include "../include/imports.ftl">

<#-- @ftlvariable name="document" type="java.lang.Object" -->
<#if document??>
  <div>Document Present</div>
<#elseif editMode>
  <div>Edit Mode</div>
<#else>
  <div>Other</div>
</#if>
