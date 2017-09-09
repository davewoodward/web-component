<#include "../include/imports.ftl">

<#-- @ftlvariable name="cparam" type="io.salte.hippo.plugins.info.WebComponentInfo" -->
<#if editMode>
  <#if cparam.url?? && cparam.elementName??>
    <h2>${cparam.elementName}</h2>
  <#else>
    <i>Click to Select Desired Web Component</i>
  </#if>
<#if cparam.url?? && cparam.elementName??>
  <div>
    <script>
      var link = document.createElement('link');
      link.rel = 'import';
      link.href = '${cparam.url}';
      document.head.appendChild(link);
      document.currentScript.parentElement.innerHTML = '<${cparam.elementName}></${cparam.elementName}>';
    </script>
  </div>
<#else>
  <div>
    <h1>Something Unexpected Happened</h1>
  </div>
</#if>
