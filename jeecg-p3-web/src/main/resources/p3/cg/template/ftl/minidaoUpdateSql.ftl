UPDATE ${tableName}
SET 
	    ${"<#if"} ${lowerName}.id ${"?exists>"}
		   id = :${lowerName}.id,
		${"</#if>"}
<#list columnDatas as item>
<#if item.columnKey !='PRI' >
	<#if item.columnType == "datetime" ||item.columnType == "date" || item.columnType == "timestamp">
	    ${"<#if"} ${lowerName}.${item.domainPropertyName} ${"?exists>"}
		   ,${item.columnName} = :${lowerName}.${item.domainPropertyName}
		${"</#if>"}
	<#else>
	   ${"<#if"} ${lowerName}.${item.domainPropertyName} ${"?exists &&"} ${lowerName}.${item.domainPropertyName} ${"?length gt 0>"}
		  ,${item.columnName} = :${lowerName}.${item.domainPropertyName}
		${"</#if>"}
	</#if>
</#if>
</#list>
WHERE id = ${":"}${lowerName}.id