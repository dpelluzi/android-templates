<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/MVVMActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${className}Activity.kt" />
    <instantiate from="src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${className}ViewModel.kt" />
 
    <open file="${srcOut}/${className}ViewModel.kt"/>
</recipe>
