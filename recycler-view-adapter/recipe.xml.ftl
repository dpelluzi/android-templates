<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/RecyclerViewAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.kt" />
 
    <open file="${srcOut}/${className}.kt"/>
</recipe>
